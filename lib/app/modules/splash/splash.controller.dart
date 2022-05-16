import 'dart:async';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:crud_getxcli/app/routes/app_pages.dart';

class SplashController extends GetxController {
  final isSignedIn = false.obs;
  final logChecker = GetStorage();
  // the true and false returnned is a string not a boolean
  String isLoggedIn = "";

  void handleLogin(timer) {
    //logChecker.writeIfNull("isLoggedIn", "true");
    dynamic isLoggedIn = logChecker.read("isLoggedIn");

    //logChecker.writeIfNull("isLoggedIn", "true");
    //isLoggedIn = logChecker.read("isLoggedIn");

    print(isLoggedIn);

    if (isLoggedIn == "null") {
      Get.offAllNamed(Routes.LOGIN);
    }
    if (isLoggedIn == true) {
      Get.offAllNamed(Routes.HOME);
    } else {
      Get.offAllNamed(Routes.LOGIN);
    }
    timer.cancel();
  }

  @override
  void onInit() {
    printInfo(info: "CHECKING LOGIN CREDENTIALS");
    super.onInit();
  }

  @override
  void onReady() {
    Timer.periodic(Duration(seconds: 3), (timer) {
      handleLogin(timer);
      // print(timer);
    });
    super.onReady();
  }

  @override
  void onClose() {}
}
