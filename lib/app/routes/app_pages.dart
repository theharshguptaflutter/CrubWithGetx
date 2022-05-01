import 'package:get/get.dart';

import '../modules/home/home.binding.dart';
import '../modules/home/home.view.dart';
import '../modules/login/login.binding.dart';
import '../modules/login/login.view.dart';
import '../modules/login/registration/registration.binding.dart';
import '../modules/login/registration/registration.view.dart';
import '../modules/splash/splash.binding.dart';
import '../modules/splash/splash.view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
      children: [
        GetPage(
          name: _Paths.REGISTRATION,
          page: () => RegistrationView(),
          binding: RegistrationBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
  ];
}
