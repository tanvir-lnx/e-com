import 'package:crafty_bay/features/home/main/screens/category_screen/catergory_screen_controller.dart';
import 'package:get/get.dart';

class CategoryScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CatergoryScreenController());
    
  }
}
