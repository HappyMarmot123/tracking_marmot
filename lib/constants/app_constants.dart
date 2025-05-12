// 앱 전역에서 사용될 상수들을 정의합니다.
// 예시: API 기본 URL, 특정 설정값 등

class AppConstants {
  static const String appName = 'Tracking Marmot';
  static const String apiBaseUrl =
      'https://your.api.server.com/api'; // 실제 API URL로 변경 필요
  static const int defaultTimeoutSeconds = 30;
}

// 색상 상수 예시 (별도 파일로 분리 가능: app_colors.dart)
// import 'package:flutter/material.dart';
// class AppColors {
//   static const Color primaryColor = Colors.blueAccent;
//   static const Color secondaryColor = Colors.greenAccent;
// }

// 문자열 상수 예시 (별도 파일로 분리 가능: app_strings.dart)
// class AppStrings {
//   static const String welcomeMessage = '환영합니다!';
//   static const String errorMessage = '오류가 발생했습니다.';
// }
