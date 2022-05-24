// ignore_for_file: prefer_const_constructors

import 'package:crud_getxcli/app/utils/theme/button.dart';
import 'package:crud_getxcli/app/utils/theme/resources.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'add_users.controller.dart';

AddUsersController controller = Get.put(AddUsersController());

class AddUsersView extends GetView<AddUsersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          topTitle(),
          userlist(),
          regareatitle(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  regarea(),
                  // listdatatest()
                  // userlistdata(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  regarea() {
    return SizedBox(
      width: double.infinity,
      height: 600,
      child: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
              child: TextField(
                //controller: controller.email,
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
                    color: Color.fromARGB(255, 14, 1, 1),
                  ),
                  hintStyle: TextStyle(color: Color.fromARGB(255, 10, 1, 1)),
                  labelText: "Full Name ",
                ),
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
              child: TextField(
                //controller: controller.email,
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
                    color: Color.fromARGB(255, 14, 1, 1),
                  ),
                  hintStyle: TextStyle(color: Color.fromARGB(255, 10, 1, 1)),
                  labelText: "Email",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
              child: TextField(
                //controller: controller.email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  hintText: "Enter Your Password",
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 14, 1, 1),
                  ),
                  hintStyle: TextStyle(color: Color.fromARGB(255, 10, 1, 1)),
                  labelText: "Password",
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
              child: TextField(
                //controller: controller.email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  hintText: "Enter Your Number",
                  prefixIcon: const Icon(
                    Icons.numbers,
                    color: Color.fromARGB(255, 14, 1, 1),
                  ),
                  hintStyle: TextStyle(color: Color.fromARGB(255, 10, 1, 1)),
                  labelText: "Number",
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
              child: TextField(
                //controller: controller.email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  hintText: "Enter Your Gender",
                  prefixIcon: const Icon(
                    Icons.male_outlined,
                    color: Color.fromARGB(255, 14, 1, 1),
                  ),
                  hintStyle: TextStyle(color: Color.fromARGB(255, 10, 1, 1)),
                  labelText: "Gender",
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                      padding:
                          const EdgeInsets.only(top: 25.0, left: 25, right: 25),
                      child: submitButton(btnName: "Select dob")),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 25.0,
                      top: 25,
                    ),
                    child: submitButton(btnName: "Profile"),
                  ),
                ),
              ],
            ),
            Row(
              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                      padding:
                          const EdgeInsets.only(top: 25.0, left: 25, right: 25),
                      child: submitButton(btnName: "Add")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  regareatitle() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 21),
            child: Text(
              "Add New User -",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                //  decoration: TextDecoration.underline,
              ),
            ),
          ),
          alignment: Alignment.topLeft,
        ),
      ],
    );
  }

  userlist() {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
                alignment: Alignment.topLeft,
                height: 120,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(55),
                      bottomLeft: Radius.circular(55),
                    )),
                child: Container(
                    height: Get.height / 5,
                    width: Get.width,
                    margin: EdgeInsets.only(left: 11.0),
                    decoration: BoxDecoration(
                        //  border: Border.all(color: Colors.blueAccent)
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount:
                              controller.gettAllUser.value.alluser!.length,
                          itemBuilder: (context, index) {
                            return userlistdata(
                              index,
                            );
                          }),
                    ))),
          ),
        ),
      ],
    );
  }

  userlistdata(index) {
    // final index = 0;
    return Obx(() => controller.gettAllUser.value.alluser != null
        ? Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // for (var index = 0;
              //     index < controller.gettAllUser.value.alluser!.length;
              //     index++)
              GestureDetector(
                onTap: () {
                  controller.allUser();
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 25),
                  child: Container(
                    //alignment: Alignment.topLeft,
                    width: 70,
                    height: 70,
                    margin: EdgeInsets.all(4),
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      // ignore: prefer_const_literals_to_create_immutables
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 47, 229, 241),
                        Color.fromARGB(255, 255, 24, 255),
                        Color.fromARGB(255, 255, 24, 24)
                      ]),
                      borderRadius: BorderRadius.circular(
                        66,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.grey.shade800,
                      backgroundImage: AssetImage(Resources.appLogo),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  controller.gettAllUser.value.alluser![index].name.toString(),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          )
        : Container(child: Text("no data")));
  }

  // listdatatest() {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     children: [
  //       Container(
  //         height: 120,
  //         child: ListView.builder(
  //             scrollDirection: Axis.horizontal,
  //             itemCount: 5,
  //             itemBuilder: (context, index) {
  //               return Padding(
  //                 padding: const EdgeInsets.only(left: 15),
  //                 child: Text(
  //                   "Harsh Gupta",
  //                   style: TextStyle(
  //                     fontSize: 14,
  //                     fontWeight: FontWeight.w500,
  //                   ),
  //                 ),
  //               );
  //             }),
  //       ),
  //     ],
  //   );
  // }

  Container topTitle() {
    return Container(
      width: Get.width,
      height: Get.height / 15,
      color: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "User Details",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
