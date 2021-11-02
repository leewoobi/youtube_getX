import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_getx/src/app.dart';
import 'package:youtube_getx/src/binding/init_binding.dart';
import 'package:youtube_getx/src/components/youtube_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "youtube Clone App",
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(color: Colors.black)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialBinding: InitBinding(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => App()),
        GetPage(name: "/detail/:videoId", page: () => YoutubeDetail())
      ],
    );
  }
}
