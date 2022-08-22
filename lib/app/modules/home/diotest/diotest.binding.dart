import 'package:get/get.dart';

import 'diotest.controller.dart';

class DiotestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DiotestController>(
      () => DiotestController(),
    );
  }
}
