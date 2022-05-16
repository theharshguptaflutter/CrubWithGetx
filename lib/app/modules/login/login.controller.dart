import 'dart:convert';

import 'package:crud_getxcli/app/data/user_login.model.dart';
import 'package:crud_getxcli/app/routes/app_pages.dart';
import 'package:crud_getxcli/app/utils/services/rest_apis.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  Rx<UserLogin> UserLogindata = UserLogin().obs;
  final email = TextEditingController();
  final password = TextEditingController();
  final isPasswordHidden = true.obs;
  final checkBox = false.obs;
  final count = 0.obs;
  final index = 0;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    //getcheck();
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
  //void getcheck() => print(checkBox);

  userLogin() async {
    if (email.text == '' || password.text == '') {
      // print("bad");
      Get.snackbar("Form is empty", "Please fill the form",
          icon: Icon(Icons.person, color: Colors.white),
          backgroundColor: Color.fromARGB(255, 11, 108, 163),
          snackPosition: SnackPosition.TOP,
          colorText: Colors.white,
          duration: Duration(seconds: 3),
          margin: EdgeInsets.all(20));
    } else {
      //print(name.text + number.text);

      var responseBody = await API.loginUserApi(email.text, password.text);
      if (responseBody == null) {
        // print("bad");
        Get.snackbar("Somethings is wrong", "please try again",
            icon: Icon(Icons.person, color: Colors.white),
            backgroundColor: Color.fromARGB(255, 11, 108, 163),
            snackPosition: SnackPosition.TOP,
            colorText: Colors.white,
            duration: Duration(seconds: 3),
            margin: EdgeInsets.all(20));
      } else {
        //post resp get
        // final result = json.decode(responseBody.body);
        // print(result["user"][0]["msg"]);

        // print(json.decode(responseBody.body));

        UserLogindata.value =
            UserLogin.fromJson(json.decode(responseBody.body));

        // print(UserLogindata.value.user![0].name);
        // print(UserLogindata.value.status);
        if (UserLogindata.value.status == "200" ||
            UserLogindata.value.status == "201") {
          // print("yo yo surya");

          // print(UserLogindata.value.user![index]);//viewall
          final name = UserLogindata.value.user![index].name;
          final email = UserLogindata.value.user![index].email;
          final phone = UserLogindata.value.user![index].phone;
          final gender = UserLogindata.value.user![index].gender;
          final token = UserLogindata.value.user![index].token;
          GetStorage().write("name", name);
          GetStorage().write("email", email);
          GetStorage().write("phone", phone);
          GetStorage().write("gender", gender);
          GetStorage().write("token", token);
          GetStorage().write("isLoggedIn", "true");
          //  email.clear();
          //  password.clear();

          Get.snackbar("Welcome", "login done",
              icon: Icon(Icons.person, color: Colors.white),
              backgroundColor: Color.fromARGB(255, 11, 108, 163),
              snackPosition: SnackPosition.TOP,
              colorText: Colors.white,
              duration: Duration(seconds: 3),
              margin: EdgeInsets.all(20));

          Get.toNamed(Routes.HOME);
        } else {
          //print("bad");
          Get.snackbar("Heyy", "Try again",
              icon: Icon(Icons.person, color: Colors.white),
              backgroundColor: Color.fromARGB(255, 11, 108, 163),
              snackPosition: SnackPosition.TOP,
              colorText: Colors.white,
              duration: Duration(seconds: 3),
              margin: EdgeInsets.all(20));
        }
      }
    }
  }
}
