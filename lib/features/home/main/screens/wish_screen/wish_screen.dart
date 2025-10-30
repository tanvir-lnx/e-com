import 'package:crafty_bay/features/common/widgets/product_card.dart';
import 'package:crafty_bay/features/home/main/screens/wish_screen/wish_screen_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class WishScreen extends GetView<WishScreenController> {
  const WishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Wishs'),
        backgroundColor: Colors.white,
        leading: PopScope(
          onPopInvokedWithResult: (didPop, result) => controller.goToHome(),
          child: BackButton(),
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.only(top: 8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 21,
        itemBuilder: (_, index) {
          return ProductCard(iconData: Icon(CupertinoIcons.trash));
        },
      ),
    );
  }
}
