import 'dart:convert';
import 'dart:io';

import 'package:crud_getxcli/app/data/get_all_user.model.dart';
import 'package:crud_getxcli/app/utils/services/rest_apis.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddUsersController extends GetxController {
  //TODO: Implement AddUsersController
  Rx<GetAllUser> gettAllUser = GetAllUser().obs;
  var isloading = false.obs;
  final count = 0.obs;
  var selectedDate = DateTime.now().obs;
  ImagePicker _picker = ImagePicker();
  File? image;
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
    // print("allUserData");
    var responseBody = await API.getAllUser();

    if (responseBody == null) {
    } else {
      print("SocialUser value");
      gettAllUser.value = GetAllUser.fromJson(jsonDecode(responseBody));

      String? name = gettAllUser.value.alluser![1].name;
      print(name);
      // print(gettAllUser.value.alluser![1].name);

      // print(homeSocialdata.socials.creatorName);

      //print(homeSocialdata.value.socials);
      // var theDataVariable = jsonDecode(responseBody);
      // print(homeSocialdata);
      //print(theDataVariable);
    }
  }

  chooseDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDate.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(2024),
      //initialEntryMode: DatePickerEntryMode.input,
      //initialDatePickerMode: DatePickerMode.year,
      helpText: 'Select DOB',
      cancelText: 'Close',
      confirmText: 'Confirm',
      errorFormatText: 'Enter valid date',
      errorInvalidText: 'Enter valid date range',
      fieldLabelText: 'DOB',
      fieldHintText: 'Month/Date/Year',
      //selectableDayPredicate: disableDate
    );
    if (pickedDate != null && pickedDate != selectedDate.value) {
      selectedDate.value = pickedDate;
      print(selectedDate.value);
    }

    // return pickedDate;
  }

  getUserImage() async {
    var pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    // if (pickedFile != null) {
    //   //image = File(pickedFile.path);
    //   final File file = File(pickedFile.path);
    //   // Uint8List image = file.readAsBytesSync() as Uint8List;
    //   String image = base64Encode(file.readAsBytesSync());
    //   //var image = file.readAsBytesSync();
    //   print(image);

    //   //image title
    //   String Filetitle = pickedFile.name;

    //   String fileName = file.path.split('/').last;

    //   var uri = Uri.parse("http://192.168.0.20:3000/test-image");
    //   await http
    //       .post(uri, body: {"filetitle": Filetitle, "image": image})
    //       .then((res) => {print("uploaded")})
    //       .catchError((err) => {print("try again")});

    //   //base64imagesend(image);
    //   // print(image);
    //   // uploadImage(image);
    // } else {
    //   print("no image");
    // }
    // String filename = file!.path;
    // var res = await uploadImage(filename);
    // print(file.path);
    // await _picker.pickImage(source: ImageSource.gallery).then((xFile) {
    //   if (xFile != null) {
    //     final File file = File(xFile.path);
    //     var imageFile = file.readAsBytesSync();
    //     print(imageFile);
    //     uploadImage(imageFile);
    //   }
    // });
  }
}
