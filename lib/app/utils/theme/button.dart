// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:crud_getxcli/app/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class submitButton extends StatelessWidget {
  // const submitButton({
  //   Key? key,
  // }) : super(key: key);
  submitButton({required this.btnName});

  final String btnName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 55,
      decoration: BoxDecoration(
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            BoxShadow(
              // color: Colors.grey,
              // blurRadius: 35.0,
              offset: Offset(2, 2),
              blurRadius: 18,
              color: AppColor.darkblack,
            ),
          ],
          //color: Color.fromARGB(255, 6, 105, 129),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            // ignore: prefer_const_literals_to_create_immutables
            colors: [AppColor.darkblue, AppColor.lightlue],
          ),
          borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              btnName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
