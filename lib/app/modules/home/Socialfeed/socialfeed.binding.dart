import 'package:get/get.dart';

import 'socialfeed.controller.dart';

class SocialfeedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SocialfeedController>(
      () => SocialfeedController(),
    );
  }
}
