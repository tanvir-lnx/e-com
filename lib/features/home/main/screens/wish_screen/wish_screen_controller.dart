import 'package:crafty_bay/features/home/main/main_nav_holder_controller.dart';
import 'package:get/get.dart';

class WishScreenController extends GetxController {
  void goToHome() {
    Get.find<MainNavHolderController>().selectedIndex.value = 0;
  }
}