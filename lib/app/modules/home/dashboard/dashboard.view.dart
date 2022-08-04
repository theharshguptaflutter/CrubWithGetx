import 'package:crud_getxcli/app/modules/home/add_users/add_users.view.dart';
import 'package:crud_getxcli/app/modules/home/user_profile/user_profile.view.dart';
import 'package:crud_getxcli/app/utils/theme/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dashboard.controller.dart';

class DashboardView extends GetView<DashboardController> {
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
        leading: IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
            size: 15,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            SizedBox(height: 15),
            Container(
              width: screenWidth,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: AppColor.buttonBg,
                borderRadius: BorderRadius.circular(5.0),
              ),
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: TabBar(
                physics: const BouncingScrollPhysics(),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey.shade600,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: AppColor.appBackground,
                  border: Border.all(color: AppColor.primaryColor),
                ),
                tabs: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Screen 1',
                      textScaleFactor: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: TextStyle(
                        fontFamily: GoogleFonts.sourceSansPro().fontFamily,
                        height: 1.5,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Screen 2',
                      textScaleFactor: 1,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                        fontFamily: GoogleFonts.sourceSansPro().fontFamily,
                        height: 1.5,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Screen 3',
                      textScaleFactor: 1,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                        fontFamily: GoogleFonts.sourceSansPro().fontFamily,
                        height: 1.5,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  UserProfileView(),
                  AddUsersView(),
                  AddUsersView(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
