import 'package:crafty_bay/app/routes/app_routes.dart';
import 'package:crafty_bay/app/theme/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProductCategoryItem extends StatelessWidget {
  const ProductCategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.specifiedProductScreen, arguments: {'categoryName':'Electronics'});
      },
      child: Column(
        spacing: 5,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColor.themeColor.withValues(alpha: .1),
            ),
            child: Icon(
              CupertinoIcons.device_desktop,
              size: 40,
              color: AppColor.themeColor,
            ),
          ),
          Text('Electronics', style: TextStyle(color: AppColor.themeColor)),
        ],
      ),
    );
  }
}
