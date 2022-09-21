import 'package:get/get.dart';
import '../bindings/bootm_tabs_binding.dart';
import '../bindings/home_binding.dart';
import '../bindings/intro_binding.dart';
import '../bindings/login_binding.dart';
import '../bindings/signup_binding.dart';
import '../bindings/splash_binding.dart';
import '../views/Home_view.dart';
import '../views/account/signup_view.dart';
import '../views/account/login_view.dart';
import '../views/bottom_navigation_tabs.dart';
import '../views/intro_splash/intro_view.dart';
import '../views/intro_splash/splash_view.dart';
import '../views/profile_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static const SIGNUP = Routes.SIGNUP;
  static const SPLASH = Routes.SPLASH;
  static const HOME = Routes.HOME;
  static const LOGIN = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.INTRO,
      page: () => const IntroView(),
      binding: IntroBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOMTABS,
      page: () => const BottomTabs(),
      binding: BottomTabsBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: HomeBinding(),
    ),
  ];
}
