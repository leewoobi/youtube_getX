import 'package:youtube_getx/src/models/video.dart';

class YoutubeVideoResult {
  int? totalResult;
  int? resultsPage;
  String? nextPagetoken;
  List<Video>? items;

  YoutubeVideoResult(
      {this.totalResult, this.resultsPage, this.nextPagetoken, this.items});

  factory YoutubeVideoResult.fromJson(Map<String, dynamic> json) =>
      YoutubeVideoResult(
          totalResult: json["pageInfo"]["totalResults"],
          resultsPage: json["pageInfo"]["resultsPage"],
          nextPagetoken: json["nextPageToken"] ?? "",
          items: List<Video>.from(
              json["items"].map((data) => Video.fromJson(data))));
}
