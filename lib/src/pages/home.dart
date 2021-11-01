import 'package:flutter/material.dart';
import 'package:youtube_getx/src/components/custom_appbar.dart';
import 'package:youtube_getx/src/components/video_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: CustomAppbar(),
            floating: true,
            snap: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return GestureDetector(
                onTap: () {
                  // page route
                },
                child: VideoWWidget(),
              );
            }, childCount: 10),
          ),
        ],
      ),
    );
  }
}
