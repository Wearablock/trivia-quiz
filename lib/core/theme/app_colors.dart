import 'package:flutter/material.dart';
import '../config/app_config.dart';

/// 앱 색상 정의
///
/// 색상 값은 [AppConfig]에서 관리됩니다.
/// 새로운 앱을 만들 때는 [AppConfig]의 색상 값만 수정하세요.
class AppColors {
  AppColors._();

  // Brand colors
  static const Color primary = AppConfig.primaryColor;
  static const Color primaryDark = AppConfig.primaryDarkColor;
  static const Color primaryLight = AppConfig.primaryLightColor;
  static const Color secondary = AppConfig.secondaryColor;
  static const Color secondaryLight = AppConfig.secondaryLightColor;
  static const Color accent = AppConfig.accentColor;

  // Surface colors
  static const Color surfaceLight = AppConfig.surfaceLightColor;
  static const Color surfaceDark = AppConfig.surfaceDarkColor;

  // On colors (for contrast)
  static const Color onPrimary = AppConfig.onPrimaryColor;
  static const Color onSecondary = AppConfig.onSecondaryColor;

  // Category colors
  static Color get geography => AppConfig.categoryColors['geography']!;
  static Color get history => AppConfig.categoryColors['history']!;
  static Color get science => AppConfig.categoryColors['science']!;
  static Color get arts => AppConfig.categoryColors['arts']!;
  static Color get sports => AppConfig.categoryColors['sports']!;
  static Color get nature => AppConfig.categoryColors['nature']!;
  static Color get technology => AppConfig.categoryColors['technology']!;
  static Color get food => AppConfig.categoryColors['food']!;

  // Quiz feedback colors
  static const Color correct = AppConfig.correctColor;
  static const Color wrong = AppConfig.wrongColor;

  /// 카테고리 ID로 색상 가져오기
  static Color getCategoryColor(String categoryId) {
    return AppConfig.getCategoryColor(categoryId);
  }
}
