import 'package:get/instance_manager.dart';
import 'package:youtube_getx/src/controller/app_controller.dart';
import 'package:youtube_getx/src/repository/youtube_repository.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(YoutubeRepository(), permanent: true);
    Get.put(AppController());
  }
}
