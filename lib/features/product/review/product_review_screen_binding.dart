import 'package:crafty_bay/features/product/review/product_review_screen_controller.dart';
import 'package:get/get.dart';

class ProductReviewScreenBinding extends Bindings {
  @override
  void dependencies() {
   Get.put(ProductReviewScreenController());
  }
}