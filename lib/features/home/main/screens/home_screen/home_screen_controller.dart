import 'package:cached_network_image/cached_network_image.dart';
import 'package:crafty_bay/app/utils/assets_path.dart';
import 'package:crafty_bay/features/home/main/main_nav_holder_controller.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  RxInt currentPageIndex = 0.obs;
  final carsouselImages = [
    CachedNetworkImage(imageUrl: AssetsPath.networkImageOne),
    CachedNetworkImage(imageUrl: AssetsPath.networkImageTwo),
    CachedNetworkImage(imageUrl: AssetsPath.networkImageThree),
    CachedNetworkImage(imageUrl: AssetsPath.networkImageFour),
    CachedNetworkImage(imageUrl: AssetsPath.networkImageFive),
  ];
  void goToCategory() {
    Get.find<MainNavHolderController>().selectedIndex.value = 1;
  }

  void backToHome() {
    Get.back();
  }

  void closeTheApplication() {
    Get.back();
    SystemNavigator.pop();
  }
}
