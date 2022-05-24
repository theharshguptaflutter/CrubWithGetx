// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'my_location.controller.dart';

class MyLocationView extends GetView<MyLocationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: test(),
          ),
        ],
      ),
    );
  }

  Obx test() {
    MyLocationController controller = Get.put(MyLocationController());
    return Obx(
      () => Column(
        children: [
          Text(
            controller.latitude.value,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            controller.longitude.value,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            controller.address.value,
            style: TextStyle(fontSize: 16),
          ),
          Text(
            controller.code.value,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
