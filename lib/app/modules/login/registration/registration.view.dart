// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:crud_getxcli/app/utils/theme/button.dart';
import 'package:crud_getxcli/app/utils/theme/resources.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'registration.controller.dart';

RegistrationController controller = Get.put(RegistrationController());

class RegistrationView extends GetView<RegistrationController> {
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
      ),
    );
  }
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
    child: textFieldBorder(width, height),
  );
}

textFieldBorder(double width, double height) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 70),
        width: Get.width - 40,
        height: Get.height - 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white54,
        ),
        child: Column(
          children: [logoMain(), textFieldInput()],
        ),
      ),
    ],
  );
}

textFieldInput() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: controller.name,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            hintText: "Enter Your Name",
            prefixIcon: const Icon(
              Icons.person,
              color: Colors.white,
            ),
            hintStyle: TextStyle(color: Colors.white),
            labelText: "Name",
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          keyboardType: TextInputType.phone,
          controller: controller.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            hintText: "Enter Your Phone Number",
            prefixIcon: const Icon(
              Icons.numbers,
              color: Colors.white,
            ),
            hintStyle: TextStyle(color: Colors.white),
            labelText: "Phone Number",
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: controller.gender,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            hintText: "Enter Your Gender",
            prefixIcon: const Icon(
              Icons.male,
              color: Colors.white,
            ),
            hintStyle: TextStyle(color: Colors.white),
            labelText: "Gender",
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
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
              Icons.mail,
              color: Colors.white,
            ),
            hintStyle: TextStyle(color: Colors.white),
            labelText: "Email",
          ),
        ),
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
      GestureDetector(
        onTap: () {
          controller.chooseDate();
        },
        child: Text(
          "Select DOB",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
      ),
      // submitButton(),

      Padding(
        padding: const EdgeInsets.all(25.0),
        child: GestureDetector(
          onTap: () {
            print("working");
            controller.regSubmit();
          },
          child: submitButton(btnName: "Register now"),
        ),
      )
    ],
  );
}

logoMain() {
  return Container(
    child: Padding(
      padding:
          const EdgeInsets.only(bottom: 55.0, top: 80.0, left: 44, right: 44),
      child: Image.asset(Resources.logodemo),
    ),
  );
}

// submitButton() {
//   return Padding(
//     padding: const EdgeInsets.all(25.0),
//     child: GestureDetector(
//       onTap: () {
//         //   print(controller.chooseDate());
//         controller.regSubmit();
//       },
//       child: Container(
//         width: 180,
//         height: 55,
//         decoration: BoxDecoration(
//             // ignore: prefer_const_literals_to_create_immutables
//             boxShadow: [
//               BoxShadow(
//                 // color: Colors.grey,
//                 // blurRadius: 35.0,
//                 offset: Offset(2, 2),
//                 blurRadius: 18,
//                 color: Color.fromRGBO(0, 0, 0, 0.16),
//               ),
//             ],
//             //color: Color.fromARGB(255, 6, 105, 129),
//             gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               // ignore: prefer_const_literals_to_create_immutables
//               colors: [
//                 Color.fromARGB(255, 6, 105, 129),
//                 Color.fromARGB(255, 63, 128, 143),
//               ],
//             ),
//             borderRadius: BorderRadius.circular(25)),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 "Submit",
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }
