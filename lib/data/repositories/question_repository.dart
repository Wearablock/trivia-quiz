import 'dart:convert';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/question.dart';
import '../../core/constants/remote_config.dart';
import '../../core/utils/category_utils.dart';

class QuestionRepository {
  /// 로케일별 문제 캐시: {locale: {categoryId: {questionId: QuestionContent}}}
  final Map<String, Map<String, Map<String, QuestionContent>>> _contentCache =
      {};

  /// 지원하는 로케일 목록
  static const supportedLocales = [
    'en',
    'ko',
    'ja',
    'zh',
    'zh-Hant',
    'es',
    'fr',
    'de',
    'pt',
    'it',
    'ru',
    'ar',
    'th',
    'vi',
    'id',
  ];

  /// 카테고리별 문제 로드
  /// [answeredIds] - 이미 푼 문제 ID
  /// [wrongIds] - 최근 오답 문제 ID (미답변과 동등 우선)
  Future<List<Question>> getQuestionsByCategory({
    required String categoryId,
    required String locale,
    int? limit,
    bool shuffle = true,
    List<String>? answeredIds,
    List<String>? wrongIds,
  }) async {
    final contents = await _loadCategoryContent(categoryId, locale);

    var questions = contents.entries.map((entry) {
      return Question(
        id: entry.key,
        categoryId: categoryId,
        difficulty: _extractDifficulty(entry.key),
        question: entry.value.question,
        correct: entry.value.correct,
        wrong: entry.value.wrong,
        hint: entry.value.hint,
        explanation: entry.value.explanation,
      );
    }).toList();

    if (shuffle) {
      questions.shuffle(Random());
    }

    // 신규 + 오답 우선, 기존 정답 후순위
    if (answeredIds != null && answeredIds.isNotEmpty) {
      questions = _prioritizeQuestions(questions, answeredIds, wrongIds ?? []);
    }

    if (limit != null && limit < questions.length) {
      questions = questions.take(limit).toList();
    }

    return questions;
  }

  /// 특정 문제 ID 목록으로 문제 로드
  Future<List<Question>> getQuestionsByIds({
    required List<String> questionIds,
    required String locale,
  }) async {
    final questions = <Question>[];

    for (final id in questionIds) {
      final categoryId = _extractCategoryId(id);
      if (categoryId == null) continue;

      final contents = await _loadCategoryContent(categoryId, locale);
      final content = contents[id];

      if (content != null) {
        questions.add(Question(
          id: id,
          categoryId: categoryId,
          difficulty: _extractDifficulty(id),
          question: content.question,
          correct: content.correct,
          wrong: content.wrong,
          hint: content.hint,
          explanation: content.explanation,
        ));
      }
    }

    return questions;
  }

  /// 랜덤 문제 로드 (여러 카테고리에서)
  /// [answeredIds] - 이미 푼 문제 ID
  /// [wrongIds] - 최근 오답 문제 ID (미답변과 동등 우선)
  Future<List<Question>> getRandomQuestions({
    required String locale,
    required int count,
    List<String>? categoryIds,
    List<String>? excludeIds,
    List<String>? answeredIds,
    List<String>? wrongIds,
  }) async {
    final allQuestions = <Question>[];
    final categories = categoryIds ?? CategoryUtils.allCategoryIds;

    for (final categoryId in categories) {
      try {
        final questions = await getQuestionsByCategory(
          categoryId: categoryId,
          locale: locale,
          shuffle: false,
        );
        allQuestions.addAll(questions);
      } catch (e) {
        debugPrint('[QuestionRepository] 카테고리 로드 실패 ($categoryId): $e');
      }
    }

    // 제외할 문제 필터링
    var filtered = allQuestions;
    if (excludeIds != null && excludeIds.isNotEmpty) {
      filtered =
          allQuestions.where((q) => !excludeIds.contains(q.id)).toList();
    }

    // 셔플
    filtered.shuffle(Random());

    // 신규 + 오답 우선, 기존 정답 후순위
    if (answeredIds != null && answeredIds.isNotEmpty) {
      filtered = _prioritizeQuestions(filtered, answeredIds, wrongIds ?? []);
    }

    return filtered.take(count).toList();
  }

  /// 문제 우선순위 정렬 (각 그룹 내 셔플 상태 유지)
  /// 1순위: 미답변 + 오답 (섞여서 출제)
  /// 2순위: 기존 정답 문제
  List<Question> _prioritizeQuestions(
    List<Question> questions,
    List<String> answeredIds,
    List<String> wrongIds,
  ) {
    final answeredSet = answeredIds.toSet();
    final wrongSet = wrongIds.toSet();
    final priority = <Question>[];
    final rest = <Question>[];

    for (final q in questions) {
      if (!answeredSet.contains(q.id) || wrongSet.contains(q.id)) {
        // 미답변 또는 오답 → 우선 출제
        priority.add(q);
      } else {
        // 기존 정답 → 후순위
        rest.add(q);
      }
    }

    return [...priority, ...rest];
  }

  /// 카테고리 콘텐츠 로드 (캐싱)
  /// 우선순위: 메모리 캐시 → 로컬 저장소 (SharedPreferences)
  Future<Map<String, QuestionContent>> _loadCategoryContent(
    String categoryId,
    String locale,
  ) async {
    // 1순위: 메모리 캐시
    if (_contentCache[locale]?[categoryId] != null) {
      return _contentCache[locale]![categoryId]!;
    }

    // 로케일 폴백 처리
    final effectiveLocale = await _getEffectiveLocale(locale, categoryId);

    String? jsonString;

    // 2순위: 로컬 저장소 (원격 동기화 데이터)
    try {
      final prefs = await SharedPreferences.getInstance();
      final key =
          '${RemoteConfig.localDataPrefix}${effectiveLocale}_$categoryId';
      jsonString = prefs.getString(key);
    } catch (e) {
      debugPrint('[QuestionRepository] SharedPreferences 오류: $e');
    }

    // 데이터 없으면 빈 Map 반환
    if (jsonString == null) {
      return {};
    }

    final jsonData = json.decode(jsonString) as Map<String, dynamic>;

    // 파싱
    final contents = <String, QuestionContent>{};
    jsonData.forEach((key, value) {
      contents[key] = QuestionContent.fromJson(value as Map<String, dynamic>);
    });

    // 캐시 저장
    _contentCache[locale] ??= {};
    _contentCache[locale]![categoryId] = contents;

    return contents;
  }

  /// 유효한 로케일 결정 (폴백 로직)
  Future<String> _getEffectiveLocale(String locale, String categoryId) async {
    final prefs = await SharedPreferences.getInstance();

    // 요청된 로케일 먼저 시도
    final key = '${RemoteConfig.localDataPrefix}${locale}_$categoryId';
    if (prefs.getString(key) != null) {
      return locale;
    }

    // 언어 코드만 시도 (예: zh-Hant -> zh)
    if (locale.contains('-')) {
      final langCode = locale.split('-').first;
      final langKey =
          '${RemoteConfig.localDataPrefix}${langCode}_$categoryId';
      if (prefs.getString(langKey) != null) {
        return langCode;
      }
    }

    // 영어 폴백
    return 'en';
  }

  /// 문제 ID에서 카테고리 ID 추출
  /// 예: "q_geo_001" -> "geography"
  String? _extractCategoryId(String questionId) {
    return CategoryUtils.extractCategoryId(questionId);
  }

  /// 문제 ID에서 난이도 추출 (기본값: 2)
  int _extractDifficulty(String questionId) {
    // 현재 데이터 구조에서는 난이도 정보가 없으므로 기본값 반환
    // 추후 메타데이터 추가 시 확장 가능
    return 2;
  }

  /// 특정 로케일 캐시 초기화
  void clearLocaleCache(String locale) {
    _contentCache.remove(locale);
  }

  /// 전체 캐시 초기화
  void clearAllCache() {
    _contentCache.clear();
  }
}
