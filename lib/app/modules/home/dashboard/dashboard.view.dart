import 'dart:convert';

import 'package:crud_getxcli/app/routes/app_pages.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'dashboard.controller.dart';

DashboardController controller = Get.put(DashboardController());

class DashboardView extends GetView<DashboardController> {
  // void getHttp() async {
  //   try {
  //     // var response =
  //     //     await Dio().get('https://crub-with-getx.herokuapp.com/get-all-user');
  //     // print(response);

  //     var dio = Dio();
  //     var response =
  //         await dio.get('https://crub-with-getx.herokuapp.com/get-all-user');
  //     // var data = jsonDecode(response.data.toString());
  //     var pdfText = await json.decode(json.encode(response.data));
  //     print(pdfText);
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashboardView'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: (() {
            print("1");
            controller.getHttp();
          }),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 45,
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Dio api calling with Get Resp',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 120),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.FUTUTE_BUILDER);
                },
                child: Container(
                  width: 250,
                  height: 45,
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: const Text(
                        'New page',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
