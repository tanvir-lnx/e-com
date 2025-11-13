import 'package:crafty_bay/app/routes/app_routes.dart';
import 'package:crafty_bay/app/theme/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProductCategoryItem extends StatelessWidget {
  final String title;
  final String icon;
  const ProductCategoryItem({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(
          AppRoutes.specifiedProductScreen,
          arguments: {'categoryName': title},
        );
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
            child: Image.network(icon),
          ),
          Text(title, style: TextStyle(color: AppColor.themeColor)),
        ],
      ),
    );
  }
}
