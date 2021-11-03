import 'package:get/get.dart';
import 'package:get/get_connect.dart';
import 'package:youtube_getx/src/models/youtube_video_result.dart';

class YoutubeRepository extends GetConnect {
  static YoutubeRepository get to => Get.find();

  @override
  void onInit() {
    httpClient.baseUrl = "https://www.googleapis.com";
    // TODO: implement onInit
    super.onInit();
  }

  Future<YoutubeVideoResult?> loadVideos() async {
    String url =
        "/youtube/v3/search?part=snippet&channelId=UCelFN6fJ6OY6v8pbc_SLiXA&maxResults=10&order=date&type=video&videoDefinition=high&key=AIzaSyAvBnJBcAjvUdp4H6GFkVjJ2iCj7LFjgRM";
    final response = await get(url);
    if (response.status.hasError) {
      return Future.error(response.statusText.toString());
    } else {
      if (response.body["items"] != null && response.body["items"].length > 0) {
        return YoutubeVideoResult.fromJson(response.body);
      }
    }
  }
}
