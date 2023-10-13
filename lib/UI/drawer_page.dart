import "package:flutter/material.dart";

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10),
      children: <Widget>[
        UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/Image/defaultProfile.png'),
          ),
          accountName: Text('사용자 이름',style: TextStyle(color: Colors.black45)),
          accountEmail: Text('사용자 이메일',style: TextStyle(color: Colors.black45)),
          decoration: BoxDecoration(color: Colors.transparent),
        ),
        ListTile(
          leading:Image.asset('assets/Image/dognose.png'),
          title: Text('비문이란?'),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DNInfo()));}
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
    );
  }
}

class DNInfo extends StatelessWidget {
  const DNInfo({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:  Center(
          child: SizedBox(
            width: screenSize.width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50) ,
                  width: screenSize.width * 0.5,
                  constraints: BoxConstraints(maxWidth: 1000),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text("Q.비문이란 무엇일까요?", style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: screenSize.width * 0.6,
                  constraints: BoxConstraints(maxWidth: 1000),

                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text("FOPPY의 주요 요소 중 하나인, \n비문(鼻紋, nose print)에 대해 알려드릴게요."),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 1000, maxHeight: 1000),
                  margin: EdgeInsets.only(top: 60),
                  width: screenSize.width * 0.8,
                  height: screenSize.width * 0.8,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Image.asset('assets/Image/sampleNose.jpg'),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 1000),
                  margin: EdgeInsets.only(top: 20),
                  width: screenSize.width * 0.8,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text("비문이란, 반려견의 코에 있는 지문을 이야기 해요. "
                        "\n사람의 지문처럼, 비문은 반려견마다 모두 다르며, "
                        "\n나이가 들어도 변하지 않기 때문에 생체 정보로 사용될 수 있어요."),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}

