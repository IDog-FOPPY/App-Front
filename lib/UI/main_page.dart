import "package:flutter/material.dart";
import "package:foppy_front/UI/drawer_page.dart";

class MainPage extends StatefulWidget {   //즉각적인 변화를 반영하는 페이지이므로 stf 사용
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


  Widget yellowBox(Size screenSize){
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),   //위쪽 방향으로 여백
          width: screenSize.width * 0.85,
          height: screenSize.width * 0.6,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child:FittedBox(
              fit: BoxFit.fill,
              child: Image.asset('assets/Image/banner.png')
          )
        ),
        Positioned(
            bottom:0, top: 0, left: 25, //컨테이너의 중앙에 오게끔
            child: Container(
              width: screenSize.width * 0.2,
              height: screenSize.width * 0.05,
              child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: InkWell(
                    onTap: null,
                    child: Image.asset('assets/Image/img1.png'),    //비문이 뭔가요? 부분
                  )
              ),
            )
        ),
        Positioned(
          bottom: 20, left: 25,
            child: Container(
              width: screenSize.width * 0.4,
              height: screenSize.width * 0.12,
              child: FittedBox(
                fit: BoxFit.fill,
                child: InkWell(
                  onTap: null,
                  child: Image.asset('assets/Image/finding.png'),
                )
              ),
            )
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceData = MediaQuery.of(context);
    Size screenSize = deviceData.size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black38),
        backgroundColor: Colors.transparent,  //앱바 배경 투명
        elevation: 0,   //그림자 농도 0으로 설정
      ),
      endDrawer: Drawer(
        child: MenuDrawer()
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,   //세로 스크롤
        child: SizedBox(
          child: Center(
            child: Column(
              children: [
                yellowBox(screenSize),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
