/// 카테고리 관련 유틸리티
class CategoryUtils {
  CategoryUtils._();

  /// 문제 ID 접두사 → 카테고리 ID 매핑
  static const Map<String, String> prefixToCategoryMap = {
    'q_geo_': 'geography',
    'q_his_': 'history',
    'q_sci_': 'science',
    'q_art_': 'arts',
    'q_spo_': 'sports',
    'q_nat_': 'nature',
    'q_tec_': 'technology',
    'q_foo_': 'food',
  };

  /// 전체 카테고리 ID 목록
  static const List<String> allCategoryIds = [
    'geography',
    'history',
    'science',
    'arts',
    'sports',
    'nature',
    'technology',
    'food',
  ];

  /// 문제 ID에서 카테고리 ID 추출
  /// 예: "q_geo_001" -> "geography"
  /// 반환: 카테고리 ID 또는 null (매핑 실패 시)
  static String? extractCategoryId(String questionId) {
    for (final entry in prefixToCategoryMap.entries) {
      if (questionId.startsWith(entry.key)) {
        return entry.value;
      }
    }
    return null;
  }

  /// 문제 ID에서 카테고리 ID 추출 (기본값 포함)
  /// 예: "q_geo_001" -> "geography"
  /// 매핑 실패 시 'unknown' 반환
  static String extractCategoryIdOrUnknown(String questionId) {
    return extractCategoryId(questionId) ?? 'unknown';
  }
}
