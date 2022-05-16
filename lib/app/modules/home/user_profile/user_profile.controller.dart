import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class UserProfileController extends GetxController {
  //TODO: Implement UserProfileController

  final count = 0.obs;
  var switchvalue = false;
  var switchvaluetest = false.obs;

  var value = false;

  switchvaluetestdata(value) {
    // if (switchvaluetest != true) {
    //   var switchvaluetest = true;
    // }

    if (value != true) {
      value = true;
    } else {
      value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  switchlog() {
    switchvalue != true;
    update();
  }
}
