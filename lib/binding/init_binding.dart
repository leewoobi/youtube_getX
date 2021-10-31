import 'package:get/instance_manager.dart';
import 'package:youtube_getx/controller/app_controller.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
  }
}
