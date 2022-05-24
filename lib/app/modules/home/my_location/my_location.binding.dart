import 'package:get/get.dart';
import 'package:http/http.dart';

import 'my_location.controller.dart';

class MyLocationBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<MyLocationController>(
    //   () => MyLocationController(),
    // );

    Get.put(MyLocationController());
  }
}
