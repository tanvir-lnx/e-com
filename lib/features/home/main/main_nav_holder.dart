import 'package:crafty_bay/app/theme/app_color.dart';
import 'package:crafty_bay/features/home/main/main_nav_holder_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class MainNavHolder extends GetView<MainNavHolderController> {
  const MainNavHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return IndexedStack(
          index: controller.selectedIndex.value,
          children: controller.navigationDestinationScreens,
        );
      }),
      bottomNavigationBar: Obx(() {
        return NavigationBar(
          height: 66,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          indicatorColor: AppColor.themeColor.withValues(alpha: .2),

          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: controller.changePage,
          destinations: [
            NavigationDestination(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(CupertinoIcons.collections),
              label: 'Catergories',
            ),
            NavigationDestination(
              icon: Icon(CupertinoIcons.cart),
              label: 'Cart',
            ),
            NavigationDestination(
              icon: Icon(CupertinoIcons.heart),
              label: 'Wish',
            ),
          ],
        );
      }),
    );
  }
}
