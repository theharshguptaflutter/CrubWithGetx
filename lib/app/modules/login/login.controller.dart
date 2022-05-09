import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final checkBox = false.obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    getcheck();
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
  void getcheck() => print(checkBox);
}
