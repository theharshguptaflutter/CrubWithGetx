import 'package:get/get.dart';

import 'futute_builder.controller.dart';

class FututeBuilderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FututeBuilderController>(
      () => FututeBuilderController(),
    );
  }
}
