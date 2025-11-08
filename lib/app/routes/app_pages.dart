import 'package:crafty_bay/app/routes/app_routes.dart';
import 'package:crafty_bay/features/auth/screen/login/login_screen.dart';
import 'package:crafty_bay/features/auth/screen/login/login_screen_binding.dart';
import 'package:crafty_bay/features/auth/screen/signup/signup_screen.dart';
import 'package:crafty_bay/features/auth/screen/signup/signup_screen_binding.dart';
import 'package:crafty_bay/features/home/main/main_nav_holder.dart';
import 'package:crafty_bay/features/home/main/main_nav_holder_binding.dart';
import 'package:crafty_bay/features/home/main/screens/cart_screen/cart_screen.dart';
import 'package:crafty_bay/features/home/main/screens/cart_screen/cart_screen_binding.dart';
import 'package:crafty_bay/features/home/main/screens/category_screen/category_screen.dart';
import 'package:crafty_bay/features/home/main/screens/category_screen/category_screen_binding.dart';
import 'package:crafty_bay/features/home/main/screens/home_screen/home_screen.dart';
import 'package:crafty_bay/features/home/main/screens/home_screen/home_screen_binding.dart';
import 'package:crafty_bay/features/home/main/screens/wish_screen/wish_screen.dart';
import 'package:crafty_bay/features/home/main/screens/wish_screen/wish_screen_binding.dart';
import 'package:crafty_bay/features/product/create_review/create_review_screen.dart';
import 'package:crafty_bay/features/product/create_review/create_review_screen_binding.dart';
import 'package:crafty_bay/features/product/product_details/product_details_screen.dart';
import 'package:crafty_bay/features/product/product_details/product_details_screen_binding.dart';
import 'package:crafty_bay/features/product/review/product_review_screen.dart';
import 'package:crafty_bay/features/product/review/product_review_screen_binding.dart';
import 'package:crafty_bay/features/product/specified_product/specified_product_screen.dart';
import 'package:crafty_bay/features/product/specified_product/specified_product_screen_binding.dart';
import 'package:crafty_bay/features/splash/splash_screen.dart';
import 'package:crafty_bay/features/splash/splash_screen_binding.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.splashScreen,
      page: () => SplashScreen(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.loginScreen,
      page: () => LoginScreen(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.mainNavHolder,
      page: () => MainNavHolder(),
      binding: MainNavHolderBinding(),
    ),
    GetPage(
      name: AppRoutes.signUpScreen,
      page: () => SignupScreen(),
      binding: SignupScreenBinding(),
    ),

    // Navigation Pages
    GetPage(
      name: AppRoutes.cartScreen,
      page: () => CartScreen(),
      binding: CartScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.catergoryScreen,
      page: () => CategoryScreen(),
      binding: CategoryScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.homeScreen,
      page: () => HomeScreen(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.wishScreen,
      page: () => WishScreen(),
      binding: WishScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.specifiedProductScreen,
      page: () => SpecifiedProductScreen(),
      binding: SpecifiedProductScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.productDetailsScreen,
      page: () => ProductDetailsScreen(),
      binding: ProductDetailsScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.productReviewScreen,
      page: () => ProductReviewScreen(),
      binding: ProductReviewScreenBinding(),
    ),
    GetPage(name: AppRoutes.createReviewScreen, page: () => CreateReviewScreen(), binding: CreateReviewScreenBinding())
  ];
}
