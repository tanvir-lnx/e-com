import 'package:crafty_bay/app/theme/app_color.dart';
import 'package:crafty_bay/features/product/review/product_review_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductReviewScreen extends GetView<ProductReviewScreenController> {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: BackButton(),
        title: const Text('Reviews'),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 7,
                    itemBuilder: (_, index) {
                      return Card(
                        elevation: .1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(8),
                        ),
                        color: Colors.white,
                        child: ListTile(
                          contentPadding: EdgeInsets.all(12),
                          title: Row(
                            spacing: 8,
                            children: [
                              CircleAvatar(
                                maxRadius: 15,
                                backgroundColor: AppColor.themeColor.withValues(
                                  alpha: .1,
                                ),
                                child: Icon(Icons.person_outline),
                              ),
                              Text(
                                'Rabbil Madari',
                                style: Get.textTheme.titleMedium,
                              ),
                            ],
                          ),
                          subtitle: Text(
                            'so every circle either shows the check or not at the same time.  The fix is to track a selectedIndex The fix is to track a selectedIndex',
                            style: Get.textTheme.titleSmall!.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(26),
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(26),
            height: 100,
            decoration: BoxDecoration(
              color: AppColor.themeColor.withValues(alpha: .2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Reviews (16)'),
                FilledButton(
                  style: FilledButton.styleFrom(shape: CircleBorder()),
                  onPressed: controller.goToCreateReviewScreen,
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
