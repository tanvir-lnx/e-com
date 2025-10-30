import 'package:crafty_bay/features/home/main/main_nav_holder_controller.dart';
import 'package:crafty_bay/features/home/main/screens/cart_screen/cart_screen_controller.dart';
import 'package:crafty_bay/features/home/main/screens/category_screen/catergory_screen_controller.dart';
import 'package:crafty_bay/features/home/main/screens/home_screen/home_screen_controller.dart';
import 'package:crafty_bay/features/home/main/screens/wish_screen/wish_screen_controller.dart';
import 'package:get/get.dart';

class MainNavHolderBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainNavHolderController());
    Get.put(HomeScreenController());
    Get.put(CatergoryScreenController());
    Get.put(CartScreenController());
    Get.put(WishScreenController());
  }
}
