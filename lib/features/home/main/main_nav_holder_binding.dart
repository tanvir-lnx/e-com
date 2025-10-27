import 'package:crafty_bay/features/home/main/main_nav_holder_controller.dart';
import 'package:get/get.dart';

class MainNavHolderBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainNavHolderController());
  }
}