import 'package:flutter/material.dart';
import 'package:tracking_marmot/presentation/home/home.dart'; // 홈 스크린 경로 (생성 예정)

void main() {
  // runApp() 전에 필요한 초기화 로직이 있다면 여기에 추가합니다.
  // 예: WidgetsFlutterBinding.ensureInitialized();
  // 예: await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tracking Marmot', // 앱 제목은 예시입니다.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
        ), // 앱의 기본 색상 스킴
        useMaterial3: true, // Material 3 사용 권장
        // 여기에 추가적인 테마 설정을 할 수 있습니다.
        // 예: appBarTheme, textTheme 등
      ),
      debugShowCheckedModeBanner: false, // 디버그 배너 숨김
      home: const HomeScreen(), // 앱의 첫 화면 (생성 예정)
      // 라우팅 설정을 위한 initialRoute 및 routes/onGenerateRoute는 추후 추가 예정
    );
  }
}
