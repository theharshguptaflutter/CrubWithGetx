import 'package:crud_getxcli/app/routes/app_pages.dart';
import 'package:crud_getxcli/app/utils/services/rest_apis.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:intl/intl.dart';

class RegistrationController extends GetxController {
  //TODO: Implement RegistrationController

  final name = TextEditingController();
  final number = TextEditingController();
  final gender = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  var selectedDate = DateTime.now().obs;
  final isPasswordHidden = true.obs;
  final count = 0.obs;
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

  void data() => print("data");

  chooseDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDate.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(2024),
      //initialEntryMode: DatePickerEntryMode.input,
      //initialDatePickerMode: DatePickerMode.year,
      helpText: 'Select DOB',
      cancelText: 'Close',
      confirmText: 'Confirm',
      errorFormatText: 'Enter valid date',
      errorInvalidText: 'Enter valid date range',
      fieldLabelText: 'DOB',
      fieldHintText: 'Month/Date/Year',
      //selectableDayPredicate: disableDate
    );
    if (pickedDate != null && pickedDate != selectedDate.value) {
      selectedDate.value = pickedDate;
    }

    // return pickedDate;
  }

  // bool disableDate(DateTime day) {
  //   if ((day.isAfter(DateTime.now().subtract(Duration(days: 1))) &&
  //       day.isBefore(DateTime.now().add(Duration(days: 5))))) {
  //     return true;
  //   }
  //   return false;
  // }

  // dateprintfun(setdata) {
  //   print(setdata);
  // }

  regSubmit() async {
    print(selectedDate.value);
    if (name.text == '' ||
        number.text == '' ||
        email.text == '' ||
        gender.text == '' ||
        password.text == '' ||
        selectedDate.value == '') {
      print("bad");
      Get.snackbar("Form is empty", "Please fill the form",
          icon: Icon(Icons.person, color: Colors.white),
          backgroundColor: Color.fromARGB(255, 11, 108, 163),
          snackPosition: SnackPosition.TOP,
          colorText: Colors.white,
          duration: Duration(seconds: 3),
          margin: EdgeInsets.all(20));
    } else {
      //print(name.text + number.text);
      DateTime formattedDate = selectedDate.value;

      String dobdata = DateFormat('yyyy-MM-dd – kk:mm').format(formattedDate);

      var responseBody = await API.regApi(name.text, number.text, email.text,
          gender.text, password.text, dobdata);
      if (responseBody == null) {
        // SnackbarCustom.errorBar(
        //   "Error",
        //   "Teh response body was empty",
        // );
        print("bad");
        Get.snackbar("Somethings is wrong", "please try again",
            icon: Icon(Icons.person, color: Colors.white),
            backgroundColor: Color.fromARGB(255, 11, 108, 163),
            snackPosition: SnackPosition.TOP,
            colorText: Colors.white,
            duration: Duration(seconds: 3),
            margin: EdgeInsets.all(20));
      } else {
        print("okkk");
        // homeSocialdata.value = HomeSocial.fromJson(jsonDecode(responseBody));

        // print(homeSocialdata.socials.creatorName);
        name.clear();
        number.clear();
        email.clear();
        gender.clear();
        password.clear();

        Get.snackbar("Welcome", "Success",
            icon: Icon(Icons.person, color: Colors.white),
            backgroundColor: Color.fromARGB(255, 11, 108, 163),
            snackPosition: SnackPosition.TOP,
            colorText: Colors.white,
            duration: Duration(seconds: 3),
            margin: EdgeInsets.all(20));
        // dobdata.clear();

        Get.toNamed(Routes.LOGIN);
      }
    }
  }
}
