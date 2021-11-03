import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:youtube_getx/src/models/youtube_video_result.dart';
import 'package:youtube_getx/src/repository/youtube_repository.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  Rx<YoutubeVideoResult> youtubeResult = YoutubeVideoResult().obs;

  @override
  void onInit() {
    _videoLoad();
    // TODO: implement onInit
    super.onInit();
  }

  void _videoLoad() async {
    YoutubeVideoResult? youtubeVideoResult =
        await YoutubeRepository.to.loadVideos();

    if (youtubeVideoResult != null &&
        youtubeVideoResult.items != null &&
        youtubeVideoResult.items!.length > 0) {
      youtubeResult(youtubeVideoResult);
    }
  }
}
