import 'package:get/get.dart';

import 'user_profile.controller.dart';

class UserProfileBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<UserProfileController>(
    //   () => UserProfileController(),
    // );

    Get.put(UserProfileController());
  }
}
