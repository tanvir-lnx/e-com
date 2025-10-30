import 'package:crafty_bay/features/home/main/main_nav_holder_controller.dart';
import 'package:get/get.dart';

class CatergoryScreenController extends GetxController {
  void backToHome() {
    Get.find<MainNavHolderController>().selectedIndex.value = 0;
  }
}
