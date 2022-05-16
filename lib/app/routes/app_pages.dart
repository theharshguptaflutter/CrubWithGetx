import 'package:get/get.dart';

import '../modules/home/Socialfeed/socialfeed.binding.dart';
import '../modules/home/Socialfeed/socialfeed.view.dart';
import '../modules/home/dashboard/dashboard.binding.dart';
import '../modules/home/dashboard/dashboard.view.dart';
import '../modules/home/home.binding.dart';
import '../modules/home/home.view.dart';
import '../modules/home/user_profile/user_profile.binding.dart';
import '../modules/home/user_profile/user_profile.view.dart';
import '../modules/login/login.binding.dart';
import '../modules/login/login.view.dart';
import '../modules/login/registration/registration.binding.dart';
import '../modules/login/registration/registration.view.dart';
import '../modules/splash/splash.binding.dart';
import '../modules/splash/splash.view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      children: [],
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
        GetPage(
          name: _Paths.DASHBOARD,
          page: () => DashboardView(),
          binding: DashboardBinding(),
        ),
        GetPage(
          name: _Paths.SOCIALFEED,
          page: () => SocialfeedView(),
          binding: SocialfeedBinding(),
        ),
        GetPage(
          name: _Paths.USER_PROFILE,
          page: () => UserProfileView(),
          binding: UserProfileBinding(),
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
