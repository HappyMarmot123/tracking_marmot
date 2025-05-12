import 'package:flutter/material.dart';
import 'package:tracking_marmot/presentation/home/home.dart';

class AppRouter {
  static const String homeRoute = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(child: Text('존재하지 않는 페이지입니다: ${settings.name}')),
              ),
        );
    }
  }
}
