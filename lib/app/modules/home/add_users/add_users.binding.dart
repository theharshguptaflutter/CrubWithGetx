import 'package:get/get.dart';

import 'add_users.controller.dart';

class AddUsersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddUsersController>(
      () => AddUsersController(),
    );

    //Get.put(AddUsersController());
  }
}
