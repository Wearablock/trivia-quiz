import 'package:equatable/equatable.dart';
import 'question.dart';

/// 개별 문제 결과
class QuizResult extends Equatable {
  final String questionId;
  final bool isCorrect;
  final String? selectedAnswer;
  final DateTime answeredAt;

  const QuizResult({
    required this.questionId,
    required this.isCorrect,
    this.selectedAnswer,
    required this.answeredAt,
  });

  @override
  List<Object?> get props => [questionId, isCorrect, selectedAnswer, answeredAt];
}

/// 퀴즈 세션
class QuizSession {
  final String id;
  final DateTime startedAt;
  DateTime? completedAt;

  final List<Question> questions;
  int _currentIndex = 0;

  final List<QuizResult> _results = [];

  QuizSession({
    required this.id,
    required this.startedAt,
    required this.questions,
  });

  // === Getters ===

  /// 현재 문제
  Question get currentQuestion => questions[_currentIndex];

  /// 현재 인덱스 (0-based)
  int get currentIndex => _currentIndex;

  /// 현재 문제 번호 (1-based)
  int get currentNumber => _currentIndex + 1;

  /// 총 문제 수
  int get totalCount => questions.length;

  /// 완료 여부
  bool get isCompleted => _currentIndex >= questions.length;

  /// 진행률 (0.0 ~ 1.0)
  double get progress => _currentIndex / questions.length;

  /// 결과 목록 (읽기 전용)
  List<QuizResult> get results => List.unmodifiable(_results);

  /// 정답 수
  int get correctCount => _results.where((r) => r.isCorrect).length;

  /// 오답 수
  int get wrongCount => _results.where((r) => !r.isCorrect).length;

  /// 정답률 (0.0 ~ 1.0)
  double get accuracy => _results.isEmpty ? 0.0 : correctCount / _results.length;

  /// 정답률 (퍼센트)
  int get accuracyPercent => (accuracy * 100).round();

  // === Methods ===

  /// 답변 제출
  void submitAnswer(String? selectedAnswer) {
    if (isCompleted) return;

    final question = currentQuestion;
    final isCorrect = selectedAnswer == question.correct;

    _results.add(QuizResult(
      questionId: question.id,
      isCorrect: isCorrect,
      selectedAnswer: selectedAnswer,
      answeredAt: DateTime.now(),
    ));
  }

  /// 다음 문제로 이동
  void moveToNext() {
    if (_currentIndex < questions.length) {
      _currentIndex++;
    }
    if (isCompleted) {
      completedAt = DateTime.now();
    }
  }

  /// 특정 문제로 이동 (리뷰용)
  void moveTo(int index) {
    if (index >= 0 && index < questions.length) {
      _currentIndex = index;
    }
  }

  /// 오답 문제 ID 목록
  List<String> get wrongQuestionIds {
    return _results.where((r) => !r.isCorrect).map((r) => r.questionId).toList();
  }

  /// 소요 시간
  Duration get duration {
    final end = completedAt ?? DateTime.now();
    return end.difference(startedAt);
  }
}
