import 'package:crafty_bay/features/home/main/screens/cart_screen/cart_screen_controller.dart';
import 'package:get/get.dart';

class CartScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CartScreenController());
  }
}
