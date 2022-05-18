import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

class UserProfileController extends GetxController {
  //TODO: Implement UserProfileController

  final count = 0.obs;
  var switchvalue = false;
  var switchvaluetest = false.obs;
  var switchDarkmode = false.obs;
  var profileborder = false.obs;
  var value = false;
  //late Uint8List image;
  File? imageFile;
  ImagePicker _picker = ImagePicker();
  File? image;
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

  switchlog(value) {
    print(value);
    print("my data");
  }

  darkModeData(value) {
    print(value);
    print("my data");
    if (value == true) {
      Get.changeThemeMode(ThemeMode.dark);
      var profileborder = false.obs;
    } else {
      Get.changeThemeMode(ThemeMode.light);
    }
  }

  getUserImage() async {
    var pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      //image = File(pickedFile.path);
      final File file = File(pickedFile.path);
      // Uint8List image = file.readAsBytesSync() as Uint8List;
      String image = base64Encode(file.readAsBytesSync());
      //var image = file.readAsBytesSync();
      print(image);

      //image title
      String Filetitle = pickedFile.name;

      String fileName = file.path.split('/').last;

      var uri = Uri.parse("http://192.168.0.20:3000/test-image");
      await http
          .post(uri, body: {"filetitle": Filetitle, "image": image})
          .then((res) => {print("uploaded")})
          .catchError((err) => {print("try again")});

      //base64imagesend(image);
      // print(image);
      // uploadImage(image);
    } else {
      print("no image");
    }
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

  void base64imagesend(image) {
    String fileName = image.path.spLit('/').last;
  }

  // uploadImage(image) async {
  //   //var uri = Uri.parse("http://192.168.0.20:3000/user-profile-upload");
  //   //var stream = http.ByteStream(image!.openRead());
  //   //stream.cast();

  //   int length = await image.length;

  //   var uri = Uri.parse('http://192.168.0.20:3000/user-profile-upload');
  //   var request = http.MultipartRequest('POST', uri);
  //   // request.fields['title'] = "Static title";
  //   var multiport = http.MultipartFile.fromBytes('userprofileimg', image);
  //   request.files.add(multiport);
  //   var response = await request.send();
  //   //print(response.stream.toString());
  //   if (response.statusCode == 200) {
  //     print('image uploaded');
  //   } else {
  //     print('failed');
  //   }
  //   //request.files
  //   //    .add(http.MultipartFile.fromBytes('userprofileimg', imageFile));
  //   // var resdatache = await res.stream.toBytes();
  //   //late Uint8List resdatachef;
  //   // var result = String.fromCharCode(resdatachef);
  // }

  // profileImageUpload(imageFile) async {
  //   var responseBody = await API.UserProfileImgApi(imageFile);
  //   if (responseBody == null) {
  //     print("okk");
  //   } else {
  //     print("bad");
  //   }
  // }
}
