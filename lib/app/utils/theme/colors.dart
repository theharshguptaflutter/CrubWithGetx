import "package:flutter/material.dart";

class AppColor {
  // FE4980
  static const Color primaryColor1 = Color(0xFFFE4980);
  static const Color primaryColor2 = Color(0xFFFFC767);
  // ========
  static const Color backgroundFaded = Color(0xffF5F8FB);
  static const Color ultraPrimaryPurple = Color(0xff673BB8);
  static const Color primaryPurple = Color(0xff372160);
  static const Color secondaryPurple = Color(0xff0D061A);
  static const Color lightPurple = Color(0xff825FC9);
  static const Color transparentLightPurple = Color(0x123E64FF);
  static const Color extraLightPurple = Color(0xff145aff);
  static const Color iconGrey = Color(0xffAFB1BE);
  static const Color darkPurple = Color(0xff19004d);
  static const Color darkBlue = Color(0xff080040);
  static const Color darkGray = Color(0x1fCBCBCB);
  static const Color darkGray2 = Color(0x09080040);
  static const Color golden = Color(0xffCBAA6B);
  static const Color backgroundScaffold = Color(0xffCBAA6B);
  static const Color goldenDark = Color(0xffB28020);
  static const Color goldenSemiLight = Color(0xffCBAA6B);
  static const Color goldenLight = Color(0xffF8CD79);
  static const Color goldenOrange = Color(0xffE8A31E);
  static const Color lightBlue = Color(0xff848DFF);
  static const Color fadedBlue = Color(0xff8A98BA);
  static const Color greenLight = Color(0xff4CD964);

  static const Color darkblue = Color.fromARGB(255, 6, 105, 129);
  static const Color lightlue = Color.fromARGB(255, 63, 128, 143);
  static const Color darkblack = Color.fromRGBO(0, 0, 0, 0.16);
}

class CustomTheme {
  static ThemeData get flutterDefault {
    return ThemeData(
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(AppColor.darkBlue),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          // shape: MaterialStateProperty.all(
          //   RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(40),
          //   ),
          // ),
          // shape: MaterialStateProperty.all(
          // ),
          side: MaterialStateProperty.all(
            BorderSide(
              width: 2.0,
              color: Colors.black,
            ),
          ),
          padding: MaterialStateProperty.all(EdgeInsets.all(10)),
        ),
      ),
    );
  }
}
