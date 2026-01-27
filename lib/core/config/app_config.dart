import 'package:flutter/material.dart';

/// 앱 전역 설정
///
/// 새로운 앱을 만들 때 이 파일만 수정하면 됩니다.
/// - 앱 이름, 테마 색상, 카테고리, 광고 ID, IAP 상품 ID, URL 등
class AppConfig {
  AppConfig._();

  // ============================================================
  // 앱 기본 정보
  // ============================================================

  /// 앱 이름 (MaterialApp title)
  static const String appName = 'Trivia Quiz';

  /// 앱 표시 이름 (홈 화면에 표시)
  /// AndroidManifest.xml, Info.plist에도 동일하게 설정 필요
  static const String appDisplayName = 'Trivia Quiz - Daily Brain';

  // ============================================================
  // 테마 색상
  // ============================================================

  /// 메인 브랜드 색상
  static const Color primaryColor = Color(0xFFFFC107);        // Amber
  static const Color primaryDarkColor = Color(0xFFFFA000);    // Amber Dark
  static const Color primaryLightColor = Color(0xFFFFD54F);   // Amber Light

  /// 보조 색상
  static const Color secondaryColor = Color(0xFF5D4037);      // Brown
  static const Color secondaryLightColor = Color(0xFF8D6E63); // Brown Light

  /// 강조 색상
  static const Color accentColor = Color(0xFFFF6F00);         // Orange

  /// 배경 색상
  static const Color surfaceLightColor = Color(0xFFFFFBF5);   // Warm White
  static const Color surfaceDarkColor = Color(0xFF1A1A1A);    // Dark Gray

  /// 텍스트 대비 색상
  static const Color onPrimaryColor = Color(0xFF1A1A1A);      // 노란색 위의 텍스트
  static const Color onSecondaryColor = Color(0xFFFFFFFF);    // 브라운 위의 텍스트

  /// 피드백 색상
  static const Color correctColor = Color(0xFF4CAF50);        // Green
  static const Color wrongColor = Color(0xFFF44336);          // Red

  // ============================================================
  // 카테고리 설정
  // ============================================================

  /// 카테고리 목록 (categories.json과 일치해야 함)
  static const List<String> categories = [
    'geography',
    'history',
    'science',
    'arts',
    'sports',
    'nature',
    'technology',
    'food',
  ];

  /// 카테고리별 색상
  static const Map<String, Color> categoryColors = {
    'geography': Color(0xFF2E7D32),
    'history': Color(0xFF8B4513),
    'science': Color(0xFF1565C0),
    'arts': Color(0xFF7B1FA2),
    'sports': Color(0xFFC62828),
    'nature': Color(0xFF388E3C),
    'technology': Color(0xFF0277BD),
    'food': Color(0xFFEF6C00),
  };

  /// 카테고리 색상 가져오기
  static Color getCategoryColor(String categoryId) {
    return categoryColors[categoryId] ?? primaryColor;
  }

  // ============================================================
  // 지원 로케일
  // ============================================================

  static const List<String> supportedLocales = [
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

  // ============================================================
  // 광고 설정 (AdMob)
  // ============================================================

  // ----- 프로덕션 광고 ID -----

  /// Android 배너 광고 ID
  static const String bannerAdIdAndroid = 'ca-app-pub-8841058711613546/1726640787';
  /// iOS 배너 광고 ID
  static const String bannerAdIdIos = 'ca-app-pub-8841058711613546/2575536644';

  /// Android 전면 광고 ID
  static const String interstitialAdIdAndroid = 'ca-app-pub-8841058711613546/9413559115';
  /// iOS 전면 광고 ID
  static const String interstitialAdIdIos = 'ca-app-pub-8841058711613546/8020586390';

  /// Android 보상형 광고 ID
  static const String rewardedAdIdAndroid = 'ca-app-pub-8841058711613546/4915254367';
  /// iOS 보상형 광고 ID
  static const String rewardedAdIdIos = 'ca-app-pub-8841058711613546/3836647423';

  // ----- 테스트 광고 ID (디버그 모드용) -----

  static const String testBannerAdIdAndroid = 'ca-app-pub-3940256099942544/6300978111';
  static const String testBannerAdIdIos = 'ca-app-pub-3940256099942544/2934735716';

  static const String testInterstitialAdIdAndroid = 'ca-app-pub-3940256099942544/1033173712';
  static const String testInterstitialAdIdIos = 'ca-app-pub-3940256099942544/4411468910';

  static const String testRewardedAdIdAndroid = 'ca-app-pub-3940256099942544/5224354917';
  static const String testRewardedAdIdIos = 'ca-app-pub-3940256099942544/1712485313';

  /// 전면 광고 최소 간격 (초)
  static const int interstitialMinIntervalSeconds = 60;

  // ============================================================
  // 인앱 결제 (IAP)
  // ============================================================

  /// 광고 제거 상품 ID (스토어에 등록한 ID와 일치해야 함)
  static const String removeAdsProductId = 'trivia_quiz_remove_ads';

  /// 프리미엄 상태 저장 키 (SharedPreferences)
  static const String premiumStorageKey = 'is_premium';

  // ============================================================
  // 원격 데이터 동기화
  // ============================================================

  /// GitHub Raw 콘텐츠 베이스 URL
  static const String remoteDataBaseUrl =
      'https://raw.githubusercontent.com/Wearablock/trivia-quiz/main/github-data';

  /// 버전 체크 타임아웃 (초)
  static const int versionCheckTimeout = 10;

  /// 데이터 다운로드 타임아웃 (초)
  static const int dataDownloadTimeout = 30;

  /// 로컬 저장소 키
  static const String localVersionKey = 'quiz_data_version';
  static const String localDataPrefix = 'quiz_data_';

  // ============================================================
  // 앱 URL (약관, 개인정보처리방침, 고객지원)
  // ============================================================

  /// 문서 베이스 URL
  static const String docsBaseUrl = 'https://wearablock.github.io/trivia-quiz';

  /// 이용약관 URL
  static const String termsUrl = '$docsBaseUrl/terms.html';

  /// 개인정보처리방침 URL
  static const String privacyUrl = '$docsBaseUrl/privacy.html';

  /// 고객지원 URL
  static const String supportUrl = '$docsBaseUrl/support.html';
}
