import 'package:crafty_bay/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  void goToLoginScreen() {
    
    Get.offAndToNamed(AppRoutes.mainNavHolder);
  }

  @override
  void onReady() {
    goToLoginScreen();
    super.onReady();
  }
}
