import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:youtube_getx/binding/init_binding.dart';
import 'package:youtube_getx/src/app.dart';

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
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Container(),
      initialBinding: InitBinding(),
      initialRoute: "/",
      getPages: [GetPage(name: "/", page: () => App())],
    );
  }
}
