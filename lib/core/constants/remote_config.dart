import '../config/app_config.dart';

/// GitHub 원격 데이터 동기화 설정
///
/// 설정 값은 [AppConfig]에서 관리됩니다.
/// 새로운 앱을 만들 때는 [AppConfig]의 값만 수정하세요.
class RemoteConfig {
  RemoteConfig._();

  /// GitHub Raw 콘텐츠 베이스 URL
  static const String baseUrl = AppConfig.remoteDataBaseUrl;

  /// 버전 체크 타임아웃 (초)
  static const int versionCheckTimeout = AppConfig.versionCheckTimeout;

  /// 데이터 다운로드 타임아웃 (초)
  static const int dataDownloadTimeout = AppConfig.dataDownloadTimeout;

  /// 로컬 저장소 키
  static const String localVersionKey = AppConfig.localVersionKey;
  static const String localDataPrefix = AppConfig.localDataPrefix;

  /// 지원 카테고리
  static const List<String> categories = AppConfig.categories;

  /// 지원 로케일
  static const List<String> locales = AppConfig.supportedLocales;
}
