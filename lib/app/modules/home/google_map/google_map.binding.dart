import 'package:get/get.dart';

import 'google_map.controller.dart';

class GoogleMapBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<GoogleMapController>(
    //   () => GoogleMapController(),
    // );
    Get.put(GoogleMapController);
  }
}
