import 'package:crafty_bay/features/home/main/screens/home_screen/home_screen_controller.dart';
import 'package:get/get.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    
    Get.put(HomeScreenController());
  }
}