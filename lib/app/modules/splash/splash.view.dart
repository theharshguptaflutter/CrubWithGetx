import 'package:crud_getxcli/app/utils/theme/resources.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'splash.controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SizedBox(
            height: Get.height,
            width: Get.width,
            child: Column(
              children: [
                // topWidget(),
                Expanded(
                  child: Center(
                    child: Container(
                      color: Colors.black,
                      width: Get.width - 20,
                      padding: EdgeInsets.all(10.0),
                      child: Image.asset(
                        Resources.appLogo,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                // topFilters(), // bodyWidget(),
                // bottomNavigationWithViews(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
