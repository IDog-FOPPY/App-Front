import "package:flutter/material.dart";
import "package:foppy_front/UI/drawer_page.dart";

class MainPage extends StatefulWidget {
  //즉각적인 변화를 반영하는 페이지이므로 stf 사용
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget yellowBox(Size screenSize) {
    return Stack(
      children: [
        Container(
            margin: EdgeInsets.only(top: 20), //위쪽 방향으로 여백
            width: screenSize.width * 0.85,
            height: screenSize.width * 0.6,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset('assets/Image/banner.png'))),
        Positioned(
            bottom: 0,
            top: 0,
            left: 25, //컨테이너의 중앙에 오게끔
            child: Container(
              width: screenSize.width * 0.2,
              height: screenSize.width * 0.05,
              child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: InkWell(
                    onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>DNInfo()));},
                    child: Image.asset('assets/Image/img1.png'), //비문이 뭔가요? 부분
                  )),
            )),
        Positioned(
            bottom: 30,
            left: 25,
            child: Container(
              width: screenSize.width * 0.4,
              height: screenSize.width * 0.12,
              child: FittedBox(
                  fit: BoxFit.fill,
                  child: InkWell(
                    onTap: null,
                    child: Image.asset('assets/Image/finding.png'),
                  )),
            ))
      ],
    );
  }

  Widget addMyDogBox(Size screenSize) {
    return SizedBox(    //반려견 카드 생성시, 추가된 위젯의 크기에 맞게끔 크기 설정위해서 sizedbox 사용
      width: screenSize.width * 0.85,
      child: Column(children: [
        // 타이틀 섹션
        Container(
          child: ListTile(
            leading: Image.asset('assets/Image/paw.png',height: 30, width: 30),
            title: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600),// 공통 텍스트 스타일, semi bold
                children: [
                  TextSpan(text: ("내 ")),
                  TextSpan(text: ("반려견"), style: TextStyle(color: Color(0xff0074DD), fontWeight: FontWeight.bold)), // 개별 스타일
                  TextSpan(text: ("을 등록할게요.")),
                ],
              ),
            ),
            subtitle: Divider(color: Colors.black12,thickness: 1.5),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: null ,
          ),
        ),

        // 반려견 카드 섹션
        Column(
          children: [
            Container(
              // 임의로 그냥 넣어둠
                margin: EdgeInsets.only(top: 20), //위쪽 방향으로 여백
                width: screenSize.width * 0.85,
                height: screenSize.width * 0.6,
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: FittedBox(
                    fit: BoxFit.fill,
                    child: Image.asset('assets/Image/banner.png'))),
            Container(
                margin: EdgeInsets.only(top: 20), //위쪽 방향으로 여백
                width: screenSize.width * 0.85,
                height: screenSize.width * 0.6,
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: FittedBox(
                    fit: BoxFit.fill,
                    child: Image.asset('assets/Image/banner.png'))),
          ],
        )
      ]),
    );

  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceData = MediaQuery.of(context);
    Size screenSize = deviceData.size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black38),
        backgroundColor: Colors.transparent, //앱바 배경 투명
        elevation: 0, //그림자 농도 0으로 설정
      ),
      endDrawer: Drawer(child: MenuDrawer()),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical, //세로 스크롤
        child: SizedBox(
          child: Center(
            child: Column(
              children: [
                yellowBox(screenSize),
                Container(height: screenSize.width*0.1),
                addMyDogBox(screenSize),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
