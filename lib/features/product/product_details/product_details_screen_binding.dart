import 'package:crafty_bay/features/product/product_details/product_details_screen_controller.dart';
import 'package:get/get.dart';

class ProductDetailsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductDetailsScreenController());
  }
}