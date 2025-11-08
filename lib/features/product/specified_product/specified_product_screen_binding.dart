import 'package:crafty_bay/features/product/specified_product/specified_product_screen_controller.dart';
import 'package:get/get.dart';

class SpecifiedProductScreenBinding extends Bindings { 
  @override
  void dependencies() {
    Get.put(SpecifiedProductScreenController(categoryName: Get.arguments['categoryName']));
  }
}