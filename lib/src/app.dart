import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:youtube_getx/controller/app_controller.dart';

class App extends GetView<AppController> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "gkdl",
          style: TextStyle(color: Colors.white),
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.currentIndex.value,
          showSelectedLabels: true,
          selectedItemColor: Colors.black,
          onTap: controller.changePageIndex,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/svg/icons/home_off.svg"),
                activeIcon: SvgPicture.asset("assets/svg/icons/home_on.svg"),
                label: "홈"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/svg/icons/compass_off.svg",
                  width: 22,
                ),
                activeIcon: SvgPicture.asset(
                  "assets/svg/icons/compass_on.svg",
                  width: 22,
                ),
                label: "탐색"),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SvgPicture.asset(
                  "assets/svg/icons/plus.svg",
                  width: 35,
                ),
              ),
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/svg/icons/subs_off.svg"),
                activeIcon: SvgPicture.asset("assets/svg/icons/subs_on.svg"),
                label: "구독"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/svg/icons/library_off.svg"),
                activeIcon: SvgPicture.asset("assets/svg/icons/library_on.svg"),
                label: "보관함"),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Text(
          "안보이네",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
