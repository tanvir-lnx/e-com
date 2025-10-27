import 'package:crafty_bay/features/auth/screen/login/login_screen_controller.dart';
import 'package:get/get.dart';

class LoginScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginScreenController());
  }
}
