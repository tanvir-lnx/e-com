import 'package:crafty_bay/features/home/main/screens/wish_screen/wish_screen_controller.dart';
import 'package:get/get.dart';

class WishScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(WishScreenController());
  }
}