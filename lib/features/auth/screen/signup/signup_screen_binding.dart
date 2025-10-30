import 'package:crafty_bay/features/auth/screen/signup/signup_screen_controller.dart';
import 'package:get/get.dart';

class SignupScreenBinding extends Bindings {
  @override
  void dependencies() {
   Get.lazyPut(() => SignupScreenController());
  }
}