import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController
  var dio = Dio();
  final count = 0.obs;
  @override
  // ignore: unnecessary_overrides
  void onInit() {
    super.onInit();
  }

  @override
  // ignore: unnecessary_overrides
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  void getHttp() async {
    try {
      // var response =
      //     await Dio().get('https://crub-with-getx.herokuapp.com/get-all-user');
      // print(response);

      var dio = Dio();
      var response =
          await dio.get('https://crub-with-getx.herokuapp.com/get-all-user');
      // var data = jsonDecode(response.data.toString());
      var pdfText = await json.decode(json.encode(response.data));
      print(pdfText);
    } catch (e) {
      print(e);
    }
  }
}
