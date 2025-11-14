import 'package:crafty_bay/data/models/category_list_model.dart';
import 'package:crafty_bay/data/repo/home_repo/all_category_repo.dart';
import 'package:crafty_bay/features/home/main/main_nav_holder_controller.dart';
import 'package:get/get.dart';

class CatergoryScreenController extends GetxController {
  final AllCategoryRepo _allCategoryRepo = Get.find<AllCategoryRepo>();
  RxList<CategoryListModel> get allCatergoryModel =>
      _allCategoryRepo.allCatergoryList;

  void backToHome() {
    Get.find<MainNavHolderController>().selectedIndex.value = 0;
  }
}
