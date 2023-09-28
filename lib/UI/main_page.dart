import "package:flutter/material.dart";

class MainPage extends StatefulWidget {   //즉각적인 변화를 반영하는 페이지이므로 stf 사용
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("메인 페이지~~"),
      ),
    );
  }
}
