import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class YoutubeDetail extends StatelessWidget {
  const YoutubeDetail({Key? key}) : super(key: key);

  Widget _titleZone() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            " 도쿄만지회 사노 만지로",
            style: TextStyle(fontSize: 15),
          ),
          Row(
            children: [
              Text(
                "조회수 1000회",
                style: TextStyle(
                    fontSize: 13, color: Colors.black.withOpacity(0.5)),
              ),
              Text("･"),
              Text(
                "2021-02-13",
                style: TextStyle(
                    fontSize: 13, color: Colors.black.withOpacity(0.5)),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _descrptionZone() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Text(
        "네 눈엔 내가 백수처럼 보이나 본데 난 안 움직여 재택 전엔 ",
        style: TextStyle(fontSize: 14),
      ),
    );
  }

  Widget _buttonOne(String iconPath, String text) {
    return Column(
      children: [
        SvgPicture.asset("assets/svg/icons/$iconPath.svg"),
        Text(text)
      ],
    );
  }

  Widget _buttonZone() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buttonOne("like", "1000"),
        _buttonOne("dislike", "0"),
        _buttonOne("share", "공유"),
        _buttonOne("save", "저장")
      ],
    );
  }

  Widget get line => Container(
        height: 1,
        color: Colors.black.withOpacity(0.1),
      );

  Widget _ownerZone() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey.withOpacity(0.5),
          backgroundImage: Image.network(
                  "https://mblogthumb-phinf.pstatic.net/MjAyMTA3MjJfMTUw/MDAxNjI2OTI2MTU5Mjg3.Xt5GJotJDEaoLo9XBkchqyf8q45YsxQiAMvvr6hGFPog.HfIsbtzNrqzAAchbG5Hz4VdbmnS4dRozJNlgPIB-MYMg.JPEG.osa2599/%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C%ED%8C%8C%EC%9D%BC%EF%BC%8D1.jpg?type=w800")
              .image,
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "개발하는 남자",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "구독자 10000",
                style: TextStyle(
                    fontSize: 14, color: Colors.black.withOpacity(0.6)),
              )
            ],
          ),
        ),
        GestureDetector(
            child: Text(
          "구독",
          style: TextStyle(color: Colors.red, fontSize: 16),
        ))
      ]),
    );
  }

  Widget _descrption() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _titleZone(),
          line,
          _descrptionZone(),
          _buttonZone(),
          SizedBox(
            height: 20,
          ),
          line,
          _ownerZone()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 250,
            color: Colors.grey.withOpacity(0.5),
          ),
          Expanded(child: _descrption())
        ],
      ),
    );
  }
}
