import 'package:crafty_bay/features/home/main/screens/cart_screen/cart_screen.dart';
import 'package:crafty_bay/features/home/main/screens/category_screen/category_screen.dart';
import 'package:crafty_bay/features/home/main/screens/home_screen/home_screen.dart';
import 'package:crafty_bay/features/home/main/screens/wish_screen/wish_screen.dart';
import 'package:get/get.dart';

class MainNavHolderController extends GetxController {
  final navigationDestinationScreens = [
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    WishScreen()
  ];

  RxInt selectedIndex = 0.obs;

  void changePage(int value) {
    selectedIndex.value = value;
  }
}