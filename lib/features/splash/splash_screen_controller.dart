import 'package:crafty_bay/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  Future<void> goToLoginScreen() async {
    await Future.delayed(Duration(seconds: 1));
    Get.offAndToNamed(AppRoutes.mainNavHolder);
  }

  @override
  void onReady() {
    goToLoginScreen();
    super.onReady();
  }
}
