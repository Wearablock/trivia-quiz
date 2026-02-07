import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/quiz_history.dart';

part 'quiz_history_dao.g.dart';

/// 카테고리별 통계
class CategoryStats {
  final String categoryId;
  final int totalAnswered;
  final int correctCount;
  final int wrongCount;

  CategoryStats({
    required this.categoryId,
    required this.totalAnswered,
    required this.correctCount,
    required this.wrongCount,
  });

  double get accuracy =>
      totalAnswered == 0 ? 0.0 : correctCount / totalAnswered;

  int get accuracyPercent => (accuracy * 100).round();
}

/// 전체 통계
class OverallStats {
  final int totalAnswered;
  final int correctCount;
  final int wrongCount;
  final int uniqueQuestions;

  OverallStats({
    required this.totalAnswered,
    required this.correctCount,
    required this.wrongCount,
    required this.uniqueQuestions,
  });

  double get accuracy =>
      totalAnswered == 0 ? 0.0 : correctCount / totalAnswered;

  int get accuracyPercent => (accuracy * 100).round();
}

@DriftAccessor(tables: [QuizHistory])
class QuizHistoryDao extends DatabaseAccessor<AppDatabase>
    with _$QuizHistoryDaoMixin {
  QuizHistoryDao(super.db);

  /// 답변 기록 저장
  Future<int> recordAnswer({
    required String questionId,
    required String categoryId,
    required bool isCorrect,
    String? selectedAnswer,
  }) {
    return into(quizHistory).insert(
      QuizHistoryCompanion.insert(
        questionId: questionId,
        categoryId: categoryId,
        isCorrect: isCorrect,
        selectedAnswer: Value(selectedAnswer),
        answeredAt: DateTime.now(),
      ),
    );
  }

  /// 특정 문제의 최근 기록 조회
  Future<QuizHistoryData?> getLatestQuestionHistory(String questionId) {
    return (select(quizHistory)
          ..where((t) => t.questionId.equals(questionId))
          ..orderBy([(t) => OrderingTerm.desc(t.answeredAt)])
          ..limit(1))
        .getSingleOrNull();
  }

  /// 특정 문제를 푼 적이 있는지 확인
  Future<bool> hasAnswered(String questionId) async {
    final result = await getLatestQuestionHistory(questionId);
    return result != null;
  }

  /// 특정 문제를 맞춘 적이 있는지 확인
  Future<bool> hasCorrectlyAnswered(String questionId) async {
    final query = select(quizHistory)
      ..where((t) =>
          t.questionId.equals(questionId) & t.isCorrect.equals(true))
      ..limit(1);
    final result = await query.getSingleOrNull();
    return result != null;
  }

  /// 카테고리별 통계 조회 (SQL 집계 함수 사용)
  Future<CategoryStats> getCategoryStats(String categoryId) async {
    final totalCount = quizHistory.id.count();
    final correctSum = quizHistory.isCorrect.cast<int>().sum();

    final query = selectOnly(quizHistory)
      ..where(quizHistory.categoryId.equals(categoryId))
      ..addColumns([totalCount, correctSum]);

    final result = await query.getSingle();
    final total = result.read(totalCount) ?? 0;
    final correct = result.read(correctSum) ?? 0;

    return CategoryStats(
      categoryId: categoryId,
      totalAnswered: total,
      correctCount: correct,
      wrongCount: total - correct,
    );
  }

  /// 전체 통계 조회 (SQL 집계 함수 사용)
  Future<OverallStats> getOverallStats() async {
    final totalCount = quizHistory.id.count();
    final correctSum = quizHistory.isCorrect.cast<int>().sum();
    final uniqueCount = quizHistory.questionId.count(distinct: true);

    final query = selectOnly(quizHistory)
      ..addColumns([totalCount, correctSum, uniqueCount]);

    final result = await query.getSingle();
    final total = result.read(totalCount) ?? 0;
    final correct = result.read(correctSum) ?? 0;
    final unique = result.read(uniqueCount) ?? 0;

    return OverallStats(
      totalAnswered: total,
      correctCount: correct,
      wrongCount: total - correct,
      uniqueQuestions: unique,
    );
  }

  /// 틀린 문제 ID 목록 (가장 최근 시도 기준)
  Future<List<String>> getWrongQuestionIds({String? categoryId}) async {
    // 각 문제의 가장 최근 시도만 고려
    var query = select(quizHistory);

    if (categoryId != null) {
      query = query..where((t) => t.categoryId.equals(categoryId));
    }

    final results = await (query
          ..orderBy([(t) => OrderingTerm.desc(t.answeredAt)]))
        .get();

    // 문제별 가장 최근 기록만 유지
    final latestByQuestion = <String, QuizHistoryData>{};
    for (final result in results) {
      latestByQuestion.putIfAbsent(result.questionId, () => result);
    }

    // 틀린 문제만 필터링
    return latestByQuestion.entries
        .where((e) => !e.value.isCorrect)
        .map((e) => e.key)
        .toList();
  }

  /// 푼 문제 ID 목록 (DISTINCT 사용)
  Future<List<String>> getAnsweredQuestionIds({String? categoryId}) async {
    final query = selectOnly(quizHistory, distinct: true)
      ..addColumns([quizHistory.questionId]);

    if (categoryId != null) {
      query.where(quizHistory.categoryId.equals(categoryId));
    }

    final results = await query.get();
    return results.map((r) => r.read(quizHistory.questionId)!).toList();
  }

  /// 최근 틀린 문제 기록 (UI 표시용)
  Future<List<QuizHistoryData>> getRecentWrongAnswers({
    int limit = 10,
    String? categoryId,
  }) async {
    var query = select(quizHistory)
      ..where((t) => t.isCorrect.equals(false))
      ..orderBy([(t) => OrderingTerm.desc(t.answeredAt)])
      ..limit(limit);

    if (categoryId != null) {
      query = query..where((t) => t.categoryId.equals(categoryId));
    }

    return query.get();
  }

  /// 기록 전체 삭제
  Future<int> clearAllHistory() {
    return delete(quizHistory).go();
  }

  /// 특정 카테고리 기록 삭제
  Future<int> clearCategoryHistory(String categoryId) {
    return (delete(quizHistory)
          ..where((t) => t.categoryId.equals(categoryId)))
        .go();
  }

  /// 전체 기록 스트림 (실시간 업데이트)
  Stream<List<QuizHistoryData>> watchAllHistory() {
    return (select(quizHistory)
          ..orderBy([(t) => OrderingTerm.desc(t.answeredAt)]))
        .watch();
  }

  /// 전체 통계 스트림 (SQL 집계 함수 사용)
  Stream<OverallStats> watchOverallStats() {
    final totalCount = quizHistory.id.count();
    final correctSum = quizHistory.isCorrect.cast<int>().sum();
    final uniqueCount = quizHistory.questionId.count(distinct: true);

    final query = selectOnly(quizHistory)
      ..addColumns([totalCount, correctSum, uniqueCount]);

    return query.watchSingle().map((result) {
      final total = result.read(totalCount) ?? 0;
      final correct = result.read(correctSum) ?? 0;
      final unique = result.read(uniqueCount) ?? 0;

      return OverallStats(
        totalAnswered: total,
        correctCount: correct,
        wrongCount: total - correct,
        uniqueQuestions: unique,
      );
    });
  }

  /// 카테고리별 통계 스트림 (실시간 업데이트)
  Stream<CategoryStats> watchCategoryStats(String categoryId) {
    final totalCount = quizHistory.id.count();
    final correctSum = quizHistory.isCorrect.cast<int>().sum();

    final query = selectOnly(quizHistory)
      ..where(quizHistory.categoryId.equals(categoryId))
      ..addColumns([totalCount, correctSum]);

    return query.watchSingle().map((result) {
      final total = result.read(totalCount) ?? 0;
      final correct = result.read(correctSum) ?? 0;

      return CategoryStats(
        categoryId: categoryId,
        totalAnswered: total,
        correctCount: correct,
        wrongCount: total - correct,
      );
    });
  }

  /// 틀린 문제 ID 목록 스트림 (실시간 업데이트)
  Stream<List<String>> watchWrongQuestionIds({String? categoryId}) {
    var query = select(quizHistory);

    if (categoryId != null) {
      query = query..where((t) => t.categoryId.equals(categoryId));
    }

    return (query..orderBy([(t) => OrderingTerm.desc(t.answeredAt)]))
        .watch()
        .map((results) {
      // 문제별 가장 최근 기록만 유지
      final latestByQuestion = <String, QuizHistoryData>{};
      for (final result in results) {
        latestByQuestion.putIfAbsent(result.questionId, () => result);
      }

      // 틀린 문제만 필터링
      return latestByQuestion.entries
          .where((e) => !e.value.isCorrect)
          .map((e) => e.key)
          .toList();
    });
  }
}
