import 'package:crafty_bay/features/product/create_review/create_review_screen_controller.dart';
import 'package:get/get.dart';

class CreateReviewScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CreateReviewScreenController());
  }
}
