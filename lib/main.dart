//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'app/routes/app_pages.dart';

// void main() {
//   GetStorage.init();
//   runApp(
//     GetMaterialApp(
//       title: "CrubWithGetx",
//       defaultTransition: Transition.cupertino,
//       transitionDuration: Duration(milliseconds: 900),
//       initialRoute: AppPages.INITIAL,
//       getPages: AppPages.routes,
//     ),
//   );
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  await GetStorage.init();
  runApp(
    GetMaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      title: "CrubWithGetx",
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 900),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
