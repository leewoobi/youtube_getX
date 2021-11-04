import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_getx/src/controller/video_controller.dart';
import 'package:youtube_getx/src/models/video.dart';
import 'package:intl/intl.dart';

class VideoWWidget extends StatefulWidget {
  final Video video;
  const VideoWWidget({Key? key, required this.video}) : super(key: key);

  @override
  State<VideoWWidget> createState() => _VideoWWidgetState();
}

class _VideoWWidgetState extends State<VideoWWidget> {
  VideoController? _videoController;
  @override
  void initState() {
    _videoController = Get.put(VideoController(video: widget.video),
        tag: widget.video.id.videoId);

    super.initState();
  }

  Widget _thumbnail() {
    return Container(
      height: 250,
      color: Colors.grey.withOpacity(0.5),
      child: Image.network(
        widget.video.snippet.thumbnails.medium.url,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Widget _simpleDetailinfo() {
    return Container(
      padding: const EdgeInsets.only(left: 10, bottom: 20),
      child: Row(
        children: [
          Obx(
            () => CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey.withOpacity(0.5),
              backgroundImage:
                  Image.network(_videoController!.youtubeThumbnailUrl).image,
            ),
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
                      widget.video.snippet.title,
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
                  Text(widget.video.snippet.channelTitle,
                      style: TextStyle(
                          fontSize: 12, color: Colors.black.withOpacity(0.8))),
                  Text("･"),
                  Obx(
                    () => Text(_videoController!.viewCountString,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black.withOpacity(0.6))),
                  ),
                  Text("･"),
                  Text(
                      DateFormat("yyyy-mm-dd")
                          .format(widget.video.snippet.publishTime),
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
