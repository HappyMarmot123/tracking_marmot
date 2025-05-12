// 날짜 및 시간 관련 유틸리티 함수들을 제공합니다.
// 예시: 날짜 포맷팅, 시간 차이 계산 등

// import 'package:intl/intl.dart'; // intl 패키지 (필요시 pubspec.yaml에 추가)

class DateFormatter {
  // static String formatDate(DateTime date, {String format = 'yyyy-MM-dd'}) {
  //   if (date == null) return '';
  //   return DateFormat(format).format(date);
  // }

  // static String formatDateTime(DateTime dateTime, {String format = 'yyyy-MM-dd HH:mm:ss'}) {
  //   if (dateTime == null) return '';
  //   return DateFormat(format).format(dateTime);
  // }

  // 임시 메소드
  static String getCurrentTimestamp() {
    return DateTime.now().toIso8601String();
  }
}
