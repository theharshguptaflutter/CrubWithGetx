import 'package:get/get.dart';

import 'dashboard.controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<DashboardController>(
    //   () => DashboardController(),
    // );

    Get.put(DashboardController());
  }
}
