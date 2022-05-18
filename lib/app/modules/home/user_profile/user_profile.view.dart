// ignore_for_file: prefer_const_constructors

import 'package:crud_getxcli/app/utils/theme/colors.dart';
import 'package:crud_getxcli/app/utils/theme/resources.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'user_profile.controller.dart';

class UserProfileView extends GetView<UserProfileController> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
            child: ListView(
      padding: EdgeInsets.zero,
      children: [topArea(height, width), userNameBio(), userProfileSetting()],
    )));
  }

  Column userProfileSetting() {
    return Column(
      children: [
        Container(
          width: Get.width,
          height: Get.height,
          //decoration: BoxDecoration(color: ThemeMode.dark ? Color(0xFFFf2f0f0) : ThemeMode.light),
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.credit_card,
                          size: 35,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Payment Methods",
                          style: GoogleFonts.aleo(
                            fontStyle: FontStyle.normal,
                            fontSize: 18,
                            //  fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.notifications_none_outlined,
                              size: 35,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Notification",
                              style: GoogleFonts.aleo(
                                fontStyle: FontStyle.normal,
                                fontSize: 18,
                                //  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                        SwitchButton()
                        // Text(
                        //   "Notification",
                        //   style: GoogleFonts.aleo(
                        //     fontStyle: FontStyle.normal,
                        //     fontSize: 18,
                        //     //  fontWeight: FontWeight.bold
                        //   ),
                        // )

                        //  Obx(() => Text('Switch Setting: ${controller.sx.on}')),
                        //   Obx(() => Switch(
                        //     onChanged: (val) => controller.sx.toggle(),
                        //     value: controller.sx.on.value),
                        //   )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.dark_mode_outlined,
                              size: 35,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Dark Mode",
                              style: GoogleFonts.aleo(
                                fontStyle: FontStyle.normal,
                                fontSize: 18,
                                //  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                        SwitchButton2()
                        // Text(
                        //   "Notification",
                        //   style: GoogleFonts.aleo(
                        //     fontStyle: FontStyle.normal,
                        //     fontSize: 18,
                        //     //  fontWeight: FontWeight.bold
                        //   ),
                        // )

                        //  Obx(() => Text('Switch Setting: ${controller.sx.on}')),
                        //   Obx(() => Switch(
                        //     onChanged: (val) => controller.sx.toggle(),
                        //     value: controller.sx.on.value),
                        //   )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.lock_outlined,
                          size: 35,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Change Password",
                          style: GoogleFonts.aleo(
                            fontStyle: FontStyle.normal,
                            fontSize: 18,
                            //  fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.exit_to_app_outlined,
                          size: 35,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Logout",
                          style: GoogleFonts.aleo(
                            fontStyle: FontStyle.normal,
                            fontSize: 18,
                            //  fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  SwitchButton() {
    UserProfileController controller = Get.put(UserProfileController());

    return Obx(
      () => Switch(
          value: controller.switchvaluetest.value,
          onChanged: (value) {
            // controller.switchvaluetestdata(value);
            controller.switchvaluetest.toggle();
            // print(value);

            controller.switchlog(value);
            //2nd code
            // if (controller.switchvaluetest.value != true) {
            //   controller.switchvaluetest.value = true;
            // } else {
            //   controller.switchvaluetest.value = false;
            // }
          }),
    );

    // return GetBuilder<UserProfileController>(
    //     builder: (_) => Switch(
    //         value: controller.switchvalue.value,
    //         onChanged: (_) {
    //           controller.switchlog();
    //         }));
  }

  SwitchButton2() {
    UserProfileController controller = Get.put(UserProfileController());

    return Obx(
      () => Switch(
          value: controller.switchDarkmode.value,
          onChanged: (value) {
            // controller.switchvaluetestdata(value);

            //Get.changeThemeMode(ThemeMode.dark);
            controller.switchDarkmode.toggle();
            // print(value);

            controller.darkModeData(value);
            //2nd code
            // if (controller.switchvaluetest.value != true) {
            //   controller.switchvaluetest.value = true;
            // } else {
            //   controller.switchvaluetest.value = false;
            // }
          }),
    );

    // return GetBuilder<UserProfileController>(
    //     builder: (_) => Switch(
    //         value: controller.switchvalue.value,
    //         onChanged: (_) {
    //           controller.switchlog();
    //         }));
  }

  Column userNameBio() {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: Get.width,
              //    decoration: BoxDecoration(color: Color(0xFFFf2f0f0)),
              child: Text(
                "Harsh Gupta",
                style:
                    GoogleFonts.aleo(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              alignment: Alignment.center,
            ),
            Container(
              width: Get.width,
              //  decoration: BoxDecoration(color: Color(0xFFFf2f0f0)),
              child: Text(
                "Bio",
                style:
                    GoogleFonts.aleo(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              alignment: Alignment.center,
            ),
          ],
        ),
      ],
    );
  }

  topArea(double height, double width) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          // margin: EdgeInsets.only(bottom: 75),
          height: height - 650,
          // color: Colors.amber,
          // decoration: BoxDecoration(
          //     image: DecorationImage(
          //         image: AssetImage(Resources.profilebgimage),
          //         fit: BoxFit.cover)),
          child: BuildCoverImage(),
        ),
        Positioned(top: 180, child: buildContexttop(width)),
        Positioned(top: 120, child: BuildProfileImage()),
        cameraSession(),
      ],
    );
  }

  Positioned cameraSession() {
    return Positioned(
      bottom: 1,
      right: 155, //give the values according to your requirement
      child: GestureDetector(
        onTap: () {
          //  print("camera testing");
          controller.getUserImage();
        },
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xFFFf2f0f0),
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              alignment: Alignment.center,
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColor.primaryColor1,
                      AppColor.primaryColor2,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                alignment: Alignment.center,
                child: Container(
                  //padding: EdgeInsets.all(10),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromARGB(255, 80, 78, 78)),
                  child: Icon(
                    Icons.camera_alt_outlined,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget BuildCoverImage() => Container(
        color: Colors.grey,
        child: Image.asset(
          Resources.profilebgimage,
          fit: BoxFit.cover,
        ),
      );

  BuildProfileImage() {
    return Container(
      alignment: Alignment.center,
      width: 120,
      height: 120,
      margin: EdgeInsets.all(4),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 243, 240, 240),
        borderRadius: BorderRadius.circular(
          66,
        ),
      ),
      child: CircleAvatar(
        radius: 65,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: AssetImage(Resources.appLogo),
      ),
    );
  }

  buildContexttop(width) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: Get.width,
          height: Get.height / 13,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 250, 246, 246),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              )),
        ),
      ],
    );
  }

  // userData() {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Center(
  //         child: Text(
  //           GetStorage().read('name') ?? "no data",
  //           style: TextStyle(fontSize: 20),
  //         ),
  //       ),
  //       Center(
  //         child: Text(
  //           GetStorage().read('email') ?? "no data",
  //           style: TextStyle(fontSize: 20),
  //         ),
  //       ),
  //       Padding(
  //         padding: const EdgeInsets.all(8.0),
  //         child: Center(
  //           child: Text(
  //             GetStorage().read('phone').toString(),
  //             style: TextStyle(fontSize: 20),
  //           ),
  //         ),
  //       ),
  //       Padding(
  //         padding: const EdgeInsets.all(8.0),
  //         child: Center(
  //           child: Text(
  //             GetStorage().read('gender') ?? "no data",
  //             style: TextStyle(fontSize: 20),
  //           ),
  //         ),
  //       ),
  //       // Padding(
  //       //   padding: const EdgeInsets.all(8.0),
  //       //   child: Center(
  //       //     child: Text(
  //       //       GetStorage().read('token'),
  //       //       style: TextStyle(fontSize: 20),
  //       //     ),
  //       //   ),
  //       // ),
  //     ],
  //   );
  // }
}
