import 'package:crafty_bay/features/common/widgets/product_card.dart';
import 'package:crafty_bay/features/product/specified_product/specified_product_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class SpecifiedProductScreen extends GetView<SpecifiedProductScreenController> {
  const SpecifiedProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(controller.categoryName)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 20,
          itemBuilder: (_, index) {
            return ProductCard(iconData: Icon(Icons.favorite_outline));
          },
        ),
      ),
    );
  }
}
