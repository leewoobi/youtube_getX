import 'package:get/get.dart';
import 'package:get/get_connect.dart';
import 'package:youtube_getx/src/models/statistics.dart';
import 'package:youtube_getx/src/models/youtube_video_result.dart';
import 'package:youtube_getx/src/models/youtuber.dart';

class YoutubeRepository extends GetConnect {
  static YoutubeRepository get to => Get.find();

  @override
  void onInit() {
    httpClient.baseUrl = "https://www.googleapis.com";
    // TODO: implement onInit
    super.onInit();
  }

  Future<YoutubeVideoResult?> loadVideos(String nextPageToken) async {
    String url =
        "/youtube/v3/search?part=snippet&channelId=UCelFN6fJ6OY6v8pbc_SLiXA&maxResults=10&order=date&type=video&videoDefinition=high&key=AIzaSyAvBnJBcAjvUdp4H6GFkVjJ2iCj7LFjgRM&pageToken=$nextPageToken";
    final response = await get(url);
    if (response.status.hasError) {
      return Future.error(response.statusText.toString());
    } else {
      if (response.body["items"] != null && response.body["items"].length > 0) {
        return YoutubeVideoResult.fromJson(response.body);
      }
    }
  }

  Future<Statistics?> getVideoInfoById(String videoId) async {
    String url =
        "/youtube/v3/videos?part=snippet,statistics&key=AIzaSyAvBnJBcAjvUdp4H6GFkVjJ2iCj7LFjgRM&id=$videoId";
    final response = await get(url);
    if (response.status.hasError) {
      return Future.error(response.statusText.toString());
    } else {
      if (response.body["items"] != null && response.body["items"].length > 0) {
        Map<String, dynamic> data = response.body["items"][0];
        return Statistics.fromJson(data["statistics"]);
      }
    }
  }

  Future<Youtuber?> getYoutuberInfoById(String channelId) async {
    String url =
        "/youtube/v3/channels?part=statistics,snippet&key=AIzaSyAvBnJBcAjvUdp4H6GFkVjJ2iCj7LFjgRM&id=$channelId";
    final response = await get(url);
    if (response.status.hasError) {
      return Future.error(response.statusText.toString());
    } else {
      if (response.body["items"] != null && response.body["items"].length > 0) {
        Map<String, dynamic> data = response.body["items"][0];
        return Youtuber.fromJson(data);
      }
    }
  }
}
