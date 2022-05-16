// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:crud_getxcli/app/routes/app_pages.dart';
import 'package:crud_getxcli/app/utils/theme/button.dart';
import 'package:crud_getxcli/app/utils/theme/colors.dart';
import 'package:crud_getxcli/app/utils/theme/outlined_gradient_button.dart';
import 'package:crud_getxcli/app/utils/theme/resources.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.controller.dart';

class LoginView extends GetView<LoginController> {
  // bool fistcheck = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          backgroundImage(width, height),
        ],
      ),
    ));
  }

  backgroundImage(double width, double height) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromARGB(255, 196, 11, 103),
          Color.fromARGB(255, 6, 105, 129),
        ],
      )),
      child: textFieldArea(width, height),
    );
  }

  textFieldArea(double width, double height) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 70),
          width: Get.width - 40,
          height: Get.height - 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white54,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 55.0, top: 80.0, left: 44, right: 44),
                child: Image.asset(Resources.logodemo),
              ),
              Container(
                child: SingleChildScrollView(
                    child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: controller.email,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          hintText: "Enter Your Email",
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          hintStyle: TextStyle(color: Colors.white),
                          labelText: "Email",
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Obx(
                        () => TextField(
                          controller: controller.password,
                          obscureText: controller.isPasswordHidden.value,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            hintText: "Enter Your Password",
                            labelText: "Password",
                            suffix: InkWell(
                              child: Icon(
                                controller.isPasswordHidden.value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.white,
                                size: 20,
                              ),
                              onTap: () {
                                controller.isPasswordHidden.value =
                                    !controller.isPasswordHidden.value;
                              },
                            ),
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Obx(
                                  () => Checkbox(
                                    value: controller.checkBox.value,
                                    checkColor: Colors.white,
                                    activeColor: Colors.blue,
                                    onChanged: (value) {
                                      //controller.checkBox.value = true;
                                      controller.checkBox.toggle();
                                      print(controller.checkBox);
                                    },
                                  ),
                                ),
                                Text("Remember me"),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: Container(child: Text("Forget password")),
                            ),
                          ],
                        ),

                        // submitButton();
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: GestureDetector(
                            onTap: () {
                              // print("working");
                              controller.userLogin();
                            },
                            child: submitButton(btnName: "Submit"),
                          ),
                        )
                      ],
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
        signinIcons(),
      ],
    );
  }

  signinIcons() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OutlinedGradientButton(
              buttonWidth: 35,
              buttonHeight: 35,
              innerWidget: Container(
                margin: EdgeInsets.all(3),
                // decoration: BoxDecoration(
                //   color: Colors.greenAccent,
                // borderRadius: BorderRadius.circular(60),
                // ),
                child: CircleAvatar(
                  backgroundImage: AssetImage(Resources.fbIcon),
                  //child: Image.asset(Resources.fbIcon),
                ),
              ),
            ),
            // Container(
            //   height: 40,
            //   width: 40,
            //   color: Colors.white60,
            //   child: Container(
            //     width: 25,
            //     height: 25,
            //     child: CircleAvatar(
            //       backgroundImage: AssetImage(Resources.fbIcon),
            //       //child: Image.asset(Resources.fbIcon),
            //     ),
            //   ),
            // ),
            SizedBox(
              width: 10.0,
            ),

            OutlinedGradientButton(
              buttonWidth: 35,
              buttonHeight: 35,
              innerWidget: Container(
                margin: EdgeInsets.all(3),
                child: CircleAvatar(
                  backgroundImage: AssetImage(Resources.gIcon),
                ),
              ),
            ),
            // Container(
            //   width: 25,
            //   height: 25,
            //   child: CircleAvatar(
            //     backgroundImage: AssetImage(Resources.gIcon),
            //     //child: Image.asset(Resources.gIcon),
            //   ),
            // ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        // InkWell(
        RichText(
          text: TextSpan(
            text: "Don't have any account? ",
            style: GoogleFonts.lato(
                fontStyle: FontStyle.normal, color: Colors.white),
            // ignore: prefer_const_literals_to_create_immutables
            children: <TextSpan>[
              TextSpan(
                text: " Sign Up here",
                style: TextStyle(fontWeight: FontWeight.bold),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    //print('Tap Here onTap');

                    Get.toNamed(Routes.REGISTRATION);
                  },
              ),
            ],
          ),
        ),
        //Text("Don't have any account? Sign Up here",
        //    style: GoogleFonts.lato(
        //        fontStyle: FontStyle.normal, color: Colors.white)),
        //  onTap: () {},
        // ),
      ],
    );
  }
}

// class submitButton extends StatelessWidget {
//   const submitButton({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 180,
//       height: 55,
//       decoration: BoxDecoration(
//           // ignore: prefer_const_literals_to_create_immutables
//           boxShadow: [
//             BoxShadow(
//               // color: Colors.grey,
//               // blurRadius: 35.0,
//               offset: Offset(2, 2),
//               blurRadius: 18,
//               color: AppColor.darkblack,
//             ),
//           ],
//           //color: Color.fromARGB(255, 6, 105, 129),
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             // ignore: prefer_const_literals_to_create_immutables
//             colors: [
//               AppColor.darkblue,
//               AppColor.lightlue
//             ],
//           ),
//           borderRadius: BorderRadius.circular(25)),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               "Submit",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold),
//               textAlign: TextAlign.center,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
