import '../config/app_config.dart';

/// 앱에서 사용하는 URL 상수
///
/// URL 값은 [AppConfig]에서 관리됩니다.
/// 새로운 앱을 만들 때는 [AppConfig]의 URL만 수정하세요.
class AppUrls {
  AppUrls._();

  // GitHub Pages 기본 URL
  static const String baseDocsUrl = AppConfig.docsBaseUrl;

  // 약관 및 정책 URL
  static const String termsUrl = AppConfig.termsUrl;
  static const String privacyUrl = AppConfig.privacyUrl;
  static const String supportUrl = AppConfig.supportUrl;
}
