import 'package:get/get.dart';
import 'package:youtube_getx/src/controller/video_controller.dart';

class YoutubeDetailController extends GetxController {
  @override
  void onInit() {
    VideoController videoController = Get.find(tag: Get.parameters["videoId"]);
    print(videoController.video!.snippet.title);

    super.onInit();
  }
}
