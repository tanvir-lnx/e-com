import 'package:crafty_bay/features/home/main/screens/category_screen/catergory_screen_controller.dart';
import 'package:crafty_bay/features/home/main/screens/home_screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends GetView<CatergoryScreenController> {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (_, __) => controller.backToHome(),
      canPop: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: false,
          title: const Text('Categories'),
          backgroundColor: Colors.white,
          leading: BackButton(onPressed: controller.backToHome),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemCount: 20,
            itemBuilder: (_, index) {
              return ProductCategoryItem();
            },
          ),
        ),
      ),
    );
  }
}
