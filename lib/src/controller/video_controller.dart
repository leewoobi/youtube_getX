import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:youtube_getx/src/models/statistics.dart';
import 'package:youtube_getx/src/models/video.dart';
import 'package:youtube_getx/src/models/youtuber.dart';
import 'package:youtube_getx/src/repository/youtube_repository.dart';

class VideoController extends GetxController {
  Video? video;
  VideoController({this.video});
  Rx<Statistics> statistics = Statistics().obs;
  Rx<Youtuber> youtuber = Youtuber().obs;
  @override
  void onInit() async {
    Statistics? loadStatistics =
        await YoutubeRepository.to.getVideoInfoById(video!.id.videoId);
    statistics(loadStatistics);
    Youtuber? loadYoutuber = await YoutubeRepository.to
        .getYoutuberInfoById(video!.snippet.channelId);
    youtuber(loadYoutuber);

    // TODO: implement onInit
    super.onInit();
  }

  String get viewCountString => '조회수 ${statistics.value.viewCount ?? '-'}회';
  String get youtubeThumbnailUrl {
    if (youtuber.value.snippet == null)
      return "https://cdn.icon-icons.com/icons2/2506/PNG/512/user_icon_150670.png";
    return youtuber.value.snippet!.thumbnails.medium.url;
  }
}
