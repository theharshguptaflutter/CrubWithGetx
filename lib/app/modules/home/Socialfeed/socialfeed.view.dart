import 'package:crud_getxcli/app/modules/home/google_map/google_map.view.dart';
import 'package:crud_getxcli/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'socialfeed.controller.dart';

class SocialfeedView extends GetView<SocialfeedController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('SocialfeedView'),
      //   centerTitle: true,
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // IconButton(
              //   onPressed: () {
              //   //  Get.toNamed(Routes.GOOGLE_MAP);
              //   },
              //   icon: Icon(Icons.code),
              //   iconSize: 35,
              // ),
              GestureDetector(
                onTap: (() {
                  //1st  code working
                  // Get.to(() => GoogleMapView());

                  //2nd code not working
                  // Get.toNamed(Routes.GOOGLE_MAP);

                  // Get.toNamed(
                  //   Routes.GOOGLE_MAP,
                  //   arguments: {"registro": "dta"},
                  //   // the same id as the navigation key
                  // );

                  // 3th code working
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => GoogleMapView()),
                  // );
                }),
                child: Text(
                  "Coordinate",
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Get.snackbar(
                  "Friend request", "your friend request has been sent.",
                  icon: Icon(Icons.person, color: Colors.white),
                  snackPosition: SnackPosition.BOTTOM,
                  colorText: Colors.white,
                  duration: Duration(seconds: 3),
                  margin: EdgeInsets.all(20));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.code),
                  iconSize: 35,
                ),
                Text(
                  "Maps",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          GestureDetector(
              onTap: () {
                Get.toNamed(Routes.CHAT);
              },
              child: Text("click me")),
        ],
      ),
    );
  }
}
