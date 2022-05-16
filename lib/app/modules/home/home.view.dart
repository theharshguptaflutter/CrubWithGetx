import 'package:crud_getxcli/app/modules/home/Socialfeed/socialfeed.view.dart';
import 'package:crud_getxcli/app/modules/home/dashboard/dashboard.view.dart';
import 'package:crud_getxcli/app/modules/home/user_profile/user_profile.view.dart';

import 'package:crud_getxcli/app/utils/theme/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'home.controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: bottomNavigationWithViews());
  }

  // Widget bottomNavigationWithViews() => Container();
}

Widget bottomNavigationWithViews() {
  return GetBuilder<HomeController>(builder: (controller) {
    return Scaffold(
        body: SafeArea(
            child: IndexedStack(
          index: controller.bottomIndex,
          children: [
            SocialfeedView(),
            UserProfileView(),
            DashboardView(),
            DashboardView()
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 216, 214, 214),
            onTap: controller.changeTabIndex,
            unselectedItemColor: AppColor.fadedBlue,
            showUnselectedLabels: true,
            selectedItemColor: AppColor.ultraPrimaryPurple,
            currentIndex: controller.bottomIndex,
            selectedFontSize: 14,
            unselectedFontSize: 14,
            type: BottomNavigationBarType.fixed,
            items: [
              for (var index in controller.bottomNavItems)
                BottomNavigationBarItem(
                  label: index["label"] as String,
                  backgroundColor: Colors.black,
                  //convert this object to a widget
                  icon: index["icon"] as Widget,
                  activeIcon: index["activeIcon"] as Column,
                )
            ]));
  });
}
