import 'package:crud_getxcli/app/utils/theme/colors.dart';
import 'package:crud_getxcli/app/utils/theme/resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  var bottomIndex = 0;
  var topNavIndex = 0.obs;
  final count = 0.obs;

  var bottomNavItems = [
    {
      "label": "",
      // ignore: prefer_const_constructors
      "icon":
          //Padding(
          // ignore: prefer_const_constructors
          // padding: EdgeInsets.all(4.0),
          Icon(
        Icons.home,
        size: 35.0,
      ),

      //Image.asset(
      //   Resources.potIcon,
      //   color: AppColor.iconGrey,
      // ),
      // ),
      "activeIcon": Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container(
          //   height: 2.0,
          //   width: 60.0,
          //   color: Color(0xFFFFB96C),
          //   margin: EdgeInsets.only(bottom: 4.0),
          // ),
          Padding(
            padding: EdgeInsets.only(top: 1.0),
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColor.primaryColor1,
                    AppColor.primaryColor2,
                  ],
                ).createShader(bounds);
              },
              child: Icon(
                Icons.home,
                size: 35.0,
              ),

              // Image.asset(
              //   Resources.potIcon,
              //   color: AppColor.primaryColor2,
              // ),
            ),
          ),
        ],
      ),
    },
    {
      "label": "",
      "icon": //Padding(
          // padding: EdgeInsets.only(top: 6.0),
          //child:
          Icon(
        Icons.account_circle,
        size: 35.0,
      ),
      // Image.asset(
      //   Resources.calendarIcon,
      //   color: AppColor.iconGrey,
      // ),
      //  ),
      "activeIcon": Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Container(
          //   height: 2.0,
          //   width: 60.0,
          //   color: Color(0xFFFFB96C),
          //   margin: EdgeInsets.only(bottom: 8.0),
          // ),
          Padding(
            padding: EdgeInsets.only(top: 1.0),
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColor.primaryColor1,
                    AppColor.primaryColor2,
                  ],
                ).createShader(bounds);
              },
              child: Icon(
                Icons.account_circle,
                size: 35.0,
              ),
              // child: Image.asset(
              //   Resources.calendarIcon,
              //   color: AppColor.primaryColor2,
              // ),
            ),
          ),
        ],
      ),
    },
    {
      "label": "",
      "icon": //Padding(
          //  padding: EdgeInsets.all(6.0),
          Icon(
        Icons.add_to_photos_outlined,
        size: 35.0,
      ),
      // child: Image.asset(
      //   Resources.syncs,
      //   color: AppColor.iconGrey,
      // ),
      // ),
      "activeIcon": Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Container(
          //   height: 2.0,
          //   width: 60.0,
          //   color: Color(0xFFFFB96C),
          //   margin: EdgeInsets.only(bottom: 8.0),
          // ),
          Padding(
            padding: EdgeInsets.only(top: 1.0),
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColor.primaryColor1,
                    AppColor.primaryColor2,
                  ],
                ).createShader(bounds);
              },
              child: Icon(
                Icons.add_to_photos_outlined,
                size: 35.0,
              ),
              // child: Image.asset(
              //   Resources.syncs,
              //   color: AppColor.primaryColor2,
              // ),
            ),
          ),
        ],
      ),
    },
    {
      "label": "",
      "icon": //Padding(
          //  padding: EdgeInsets.all(6.0),
          // child:
          Icon(
        Icons.settings,
        size: 35.0,
      ),
      // child: Image.asset(
      //   Resources.connectIcon,
      //   color: AppColor.iconGrey,
      // ),
      // ),
      "activeIcon": Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Container(
          //   height: 2.0,
          //   width: 60.0,
          //   color: Color(0xFFFFB96C),
          //   margin: EdgeInsets.only(bottom: 8.0),
          // ),
          Padding(
            padding: EdgeInsets.only(top: 1.0),
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColor.primaryColor1,
                    AppColor.primaryColor2,
                  ],
                ).createShader(bounds);
              },
              child: Icon(
                Icons.settings,
                size: 35.0,
              ),
              // child: Image.asset(
              //   Resources.connectIcon,
              //   color: AppColor.primaryColor2,
              // ),
            ),
          ),
        ],
      ),
    },
    {
      "label": "",
      "icon": //Padding(
          //  padding: EdgeInsets.all(6.0),
          // child:
          Icon(
        Icons.my_location,
        size: 35.0,
      ),
      // child: Image.asset(
      //   Resources.connectIcon,
      //   color: AppColor.iconGrey,
      // ),
      // ),
      "activeIcon": Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Container(
          //   height: 2.0,
          //   width: 60.0,
          //   color: Color(0xFFFFB96C),
          //   margin: EdgeInsets.only(bottom: 8.0),
          // ),
          Padding(
            padding: EdgeInsets.only(top: 1.0),
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                // ignore: prefer_const_constructors
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColor.primaryColor1,
                    AppColor.primaryColor2,
                  ],
                ).createShader(bounds);
              },
              child: Icon(
                Icons.my_location,
                size: 35.0,
              ),
              // child: Image.asset(
              //   Resources.connectIcon,
              //   color: AppColor.primaryColor2,
              // ),
            ),
          ),
        ],
      ),
    },
  ];

  void changeTabIndex(int index) {
    bottomIndex = index;
    update();
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
}
