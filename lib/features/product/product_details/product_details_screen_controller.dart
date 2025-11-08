import 'package:crafty_bay/app/routes/app_routes.dart';
import 'package:crafty_bay/app/theme/app_color.dart';
import 'package:crafty_bay/app/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsScreenController extends GetxController {
  final List<Color> productColor = [
    Colors.black,
    AppColor.themeColor,
    Colors.brown,
    Colors.grey,
    Colors.black54,
  ];
  final productImage = [
    Image.asset(AssetsPath.productImageOne),
    Image.asset(AssetsPath.productImageTwo),
    Image.asset(AssetsPath.productImageFour),
  ];
  final productSize = ['S', 'M', 'L', 'XL'];
  RxInt currentPickerIndex = 0.obs;
  RxInt currentProductImageIndex = 0.obs;
  RxInt currentProductSizeIndex = 0.obs;
  RxInt productQuantityNumber = 0.obs;

  void checkColorPick(int index) {
    currentPickerIndex.value = index;
  }

  void checkSizePick(int index) {
    currentProductSizeIndex.value = index;
  }

  void incrementProductQty() {
    productQuantityNumber.value++;
  }

    void decrementProductQty() {
    productQuantityNumber.value--;
  }

  void goToProductReviewScreen() {
    Get.toNamed(AppRoutes.productReviewScreen);
  }
}
