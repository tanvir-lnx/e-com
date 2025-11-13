import 'package:crafty_bay/data/models/category_list_model.dart';
import 'package:crafty_bay/data/models/slider_image_model.dart';
import 'package:crafty_bay/data/repo/home_repo/all_category_repo.dart';
import 'package:crafty_bay/data/repo/home_repo/carousel_image_repo.dart';
import 'package:crafty_bay/features/home/main/main_nav_holder_controller.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class HomeScreenController extends GetxController {
  final Logger logger = Logger();
  final CarouselImageRepo _imageRepo = Get.find<CarouselImageRepo>();
  final AllCategoryRepo _allCategoryRepo = Get.find<AllCategoryRepo>();
  RxInt currentPageIndex = 0.obs;
  final RxList<SliderImageModel> carsouselImages = <SliderImageModel>[].obs;
  final RxList<CategoryListModel> allCatergoryModel = <CategoryListModel>[].obs;

  @override
  void onInit() {
   _fetchSliderImage();
   _fetchAllCatergory();
    super.onInit();
  }

  Future<void> _fetchSliderImage() async {
    try {
      final List<SliderImageModel> items = await _imageRepo.getCarouselImage();
     if (items.isNotEmpty) {
     carsouselImages.assignAll(items);
     }
    } catch (e) {
      logger.d('Error fetching: $e' );
    }
  }

Future<void> _fetchAllCatergory() async {
  try {
    final List<CategoryListModel> items = await _allCategoryRepo.getAllCategory();
    if (items.isNotEmpty) {
      allCatergoryModel.assignAll(items);
    }
    
  } catch (e) {
    logger.d('Error fetching: $e');
  }
}

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

  void goToSpecifiedProductCategory() {}

  void getSliderImage() {}
}
