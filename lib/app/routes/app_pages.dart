import 'package:crafty_bay/app/routes/app_routes.dart';
import 'package:crafty_bay/features/auth/screen/login/login_screen.dart';
import 'package:crafty_bay/features/auth/screen/login/login_screen_binding.dart';
import 'package:crafty_bay/features/home/main/main_nav_holder.dart';
import 'package:crafty_bay/features/home/main/main_nav_holder_binding.dart';
import 'package:crafty_bay/features/splash/splash_screen.dart';
import 'package:crafty_bay/features/splash/splash_screen_binding.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.splashScreen,
      page: () => SplashScreen(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.loginScreen,
      page: () => LoginScreen(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.mainNavHolder,
      page: () => MainNavHolder(),
      binding: MainNavHolderBinding(),
    ),
  ];
}
