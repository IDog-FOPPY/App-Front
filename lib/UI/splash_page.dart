import 'dart:async';
import 'package:get/get.dart';
import "package:flutter/material.dart";
import 'package:foppy_front/UI/main_page.dart';

//MaterialPageRoute를 상속해 buildTransitions 설정
//화면 전환 시, 에니메이션 효과를 자동 적용하게끔 함.
class CustomRoute<T> extends MaterialPageRoute<T> {
  CustomRoute({ required WidgetBuilder builder, RouteSettings? settings })
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    if (settings.name=='/')
      return child;

    return FadeTransition(opacity: animation, child: child);
  }
}

//앱의 즉각적인 변화를 볼 필요가 없는 페이지이므로 stless로 편집
class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds:3 ), () {   // 3초후 자동으로 메인 화면으로 넘어감
      Navigator.push(context, CustomRoute(builder: (context) => MainPage()));
    });

    final String logoIMG = 'assets/Image/Logo.png';

    return Scaffold(
      resizeToAvoidBottomInset: false, //키보드 활성화 시 화면 밀림 off
        body:Container(
            width: MediaQuery.of(context).size.width,  //가로, 세로 기기 크기에 맞게 조정
            height: MediaQuery.of(context).size.height,
            child: Center(
                child: Container(
                  margin: EdgeInsets.all(100),   //외부 50씩 여백 생성
                  child:Image.asset(logoIMG,
                      width: double.infinity,   //부모크기에 맞게끔 조정
                      height: double.infinity),
                )
            )
        )
    );
  }

}