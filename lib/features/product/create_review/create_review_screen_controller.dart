import 'package:get/get.dart';

class CreateReviewScreenController extends GetxController {
  void onSubmit() {
    Get.snackbar(
      snackPosition: SnackPosition.BOTTOM,
      'Review Submitted',
      'Thanks for your review',
    );
  }
}
