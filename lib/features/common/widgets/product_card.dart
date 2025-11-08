import 'package:crafty_bay/app/routes/app_routes.dart';
import 'package:crafty_bay/app/theme/app_color.dart';
import 'package:crafty_bay/app/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {
  final Widget iconData;
  const ProductCard({required this.iconData, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.productDetailsScreen);
      },
      child: Card(
        elevation: .2,
        child: Container(
          height: 150,
          width: 162,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  color: AppColor.themeColor.withValues(alpha: .1),
                ),
                child: SizedBox(
                  height: 90,
                  width: 70,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 3.0, top: 5),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: iconData,
                          ),
                        ),
                      ),
                      Center(child: Image.asset(AssetsPath.dummyImage)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'New Year Special Shoe 30',
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      spacing: 20,
                      children: [
                        Text(
                          '\$100',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColor.themeColor,
                          ),
                        ),
                        Row(
                          spacing: 3,
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 16),
                            Text('4.8', style: TextStyle(fontSize: 11)),
                            SizedBox(width: 2),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
