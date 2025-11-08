import 'package:crafty_bay/app/routes/app_routes.dart';
import 'package:get/get.dart';

class ProductReviewScreenController extends GetxController {
  void goToCreateReviewScreen() {
    Get.toNamed(AppRoutes.createReviewScreen);
  }
}
