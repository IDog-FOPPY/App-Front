import "package:flutter/material.dart";

class MainPage extends StatefulWidget {   //즉각적인 변화를 반영하는 페이지이므로 stf 사용
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


  Widget yellowBox(){

    final String bannerIMG = 'assets/Image/Banner.png';

    MediaQueryData deviceData = MediaQuery.of(context);
    Size screenSize = deviceData.size;   //기기의 화면 사이즈 저장
    return Center(
      child:Container(
        margin: EdgeInsets.only(top: 20),   //위쪽 방향으로 여백
        width: screenSize.width - 50,
        height: (screenSize.width - 50)*0.7,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Stack(
          children: [
            FittedBox(
                fit: BoxFit.fill,
                child: Image.asset(bannerIMG)
            ),
            Positioned(
              top:0, bottom:0, left: 25, //컨테이너의 중앙에 오게끔
              child: TextButton(
                  onPressed: null,
                  child: Text("비문에 대해 알아보기 >", style: TextStyle(color: Colors.black54,fontSize: 15))
              ),
            ),
          ],
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
      //기기별 화면 사이즈 측정

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black38),
        backgroundColor: Colors.transparent,  //앱바 배경 투명
        elevation: 0,   //그림자 농도 0으로 설정
      ),
      endDrawer: Drawer(
        child: SizedBox(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10),
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/Image/DefaultProfile.png'),
                ),
                accountName: Text('사용자 이름',style: TextStyle(color: Colors.black45)),
                accountEmail: Text('사용자 이메일',style: TextStyle(color: Colors.black45)),
                decoration: BoxDecoration(color: Colors.transparent),
              ),
              ListTile(
                leading:Image.asset('assets/Image/dognose.png'),
                title: Text('비문이란?'),
                onTap: null,
              ),
              Divider(color: Colors.black12,thickness: 1.0),

              ListTile(
                leading: Image.asset('assets/Image/dog.png'),
                title: Text('반려견 등록'),
                onTap: null,
              ),
              ListTile(
                leading: Image.asset('assets/Image/magnifier.png'),
                title: Text('유기견 등록 및 확인'),
                onTap: null,
              ),
              ListTile(
                leading: Image.asset('assets/Image/community.png'),
                title: Text('커뮤니티'),
                onTap: null,
              ),
              Divider(color: Colors.black12,thickness: 1.0),

              ListTile(
                leading: Image.asset('assets/Image/support.png'),
                title: Text('고객센터'),
                onTap: null,
              ),
              ListTile(
                leading: Image.asset('assets/Image/help.png'),
                title: Text('자주 묻는 질문'),
                onTap: null,
              ),
              ListTile(
                leading: Image.asset('assets/Image/logout.png'),
                title: Text('로그아웃'),
                onTap: null,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,   //세로 스크롤
        child: SizedBox(
          child: Center(
            child: Column(
            children: [
            //yellowBox(),
            ],
            ),
          ),
        ),
      ),
    );
  }
}
