import 'dart:convert';

import 'package:crud_getxcli/app/data/get_all_user.model.dart';
import 'package:crud_getxcli/app/utils/services/rest_apis.dart';
import 'package:get/get.dart';

class AddUsersController extends GetxController {
  //TODO: Implement AddUsersController
  Rx<GetAllUser> gettAllUser = GetAllUser().obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    allUser();
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  allUser() async {
    print("allUserData");
    var responseBody = await API.getAllUser();

    if (responseBody == null) {
    } else {
      print("SocialUser value");
      gettAllUser.value = GetAllUser.fromJson(jsonDecode(responseBody));

      var str;
      print(gettAllUser.value.alluser![1].name);

      // print(homeSocialdata.socials.creatorName);

      //print(homeSocialdata.value.socials);
      // var theDataVariable = jsonDecode(responseBody);
      // print(homeSocialdata);
      //print(theDataVariable);
    }
  }
}
