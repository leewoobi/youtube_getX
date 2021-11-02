import 'package:flutter/material.dart';

class VideoWWidget extends StatelessWidget {
  const VideoWWidget({Key? key}) : super(key: key);

  Widget _thumbnail() {
    return Container(height: 250, color: Colors.grey.withOpacity(0.5));
  }

  Widget _simpleDetailinfo() {
    return Container(
      padding: const EdgeInsets.only(left: 10, bottom: 20),
      child: Row(
        children: [
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
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "도쿄리벤져스 유튜브  다시보기 도쿄리벤져스 유튜브  다시보기 도쿄리벤져스 유튜브  다시보기",
                      maxLines: 2,
                    ),
                  ),
                  IconButton(
                      alignment: Alignment.topCenter,
                      onPressed: () {},
                      icon: Icon(Icons.more_vert, size: 18))
                ],
              ),
              Row(
                children: [
                  Text('leeraincoat',
                      style: TextStyle(
                          fontSize: 12, color: Colors.black.withOpacity(0.8))),
                  Text("･"),
                  Text('조회수 1000회',
                      style: TextStyle(
                          fontSize: 12, color: Colors.black.withOpacity(0.6))),
                  Text("･"),
                  Text('2021-11-01',
                      style: TextStyle(
                          fontSize: 12, color: Colors.black.withOpacity(0.6))),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _thumbnail(),
          _simpleDetailinfo(),
        ],
      ),
    );
  }
}
