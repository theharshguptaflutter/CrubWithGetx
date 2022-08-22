import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.appBackground,
      appBar: AppBar(
        toolbarHeight: 45,
        backgroundColor: AppColor.buttonBg,
        title: Text(
          'Screen Change',
          style: TextStyle(
            fontFamily: GoogleFonts.sourceSansPro().fontFamily,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DashboardView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
