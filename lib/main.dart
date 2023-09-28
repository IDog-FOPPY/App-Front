import 'package:flutter/material.dart';
import 'package:foppy_front/UI/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const Splash()     // 앱의 첫 화면인 스플레시 스크린 호출
    );
  }
}