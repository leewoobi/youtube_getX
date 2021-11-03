import 'package:flutter/material.dart';
import 'package:youtube_getx/src/models/video.dart';
import 'package:intl/intl.dart';

class VideoWWidget extends StatelessWidget {
  final Video video;
  const VideoWWidget({Key? key, required this.video}) : super(key: key);

  Widget _thumbnail() {
    return Container(
      height: 250,
      color: Colors.grey.withOpacity(0.5),
      child: Image.network(
        video.snippet.thumbnails.medium.url,
        fit: BoxFit.fitWidth,
      ),
    );
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
                      video.snippet.title,
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
                  Text(video.snippet.channelTitle,
                      style: TextStyle(
                          fontSize: 12, color: Colors.black.withOpacity(0.8))),
                  Text("･"),
                  Text('조회수 1000회',
                      style: TextStyle(
                          fontSize: 12, color: Colors.black.withOpacity(0.6))),
                  Text("･"),
                  Text(
                      DateFormat("yyyy-mm-dd")
                          .format(video.snippet.publishTime),
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
