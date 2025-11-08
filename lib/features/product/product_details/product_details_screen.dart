import 'package:carousel_slider/carousel_slider.dart';
import 'package:crafty_bay/app/theme/app_color.dart';
import 'package:crafty_bay/features/common/widgets/item_inc_dec_button.dart';
import 'package:crafty_bay/features/product/product_details/product_details_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailsScreen extends GetView<ProductDetailsScreenController> {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: false, title: Text('Product Details')),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            child: Obx(() {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _productImageViewer(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Happy New Year Special Deal Save 30 %',
                                    softWrap: true,
                                    style: Get.textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Row(
                                    spacing: 2,
                                    children: [
                                      Row(
                                        spacing: 5,
                                        children: [
                                          Icon(Icons.star, color: Colors.amber),
                                          Text('4.4'),
                                        ],
                                      ),
                                      TextButton(
                                        onPressed:
                                            controller.goToProductReviewScreen,
                                        child: const Text('Reviews'),
                                      ),
                                      Card(
                                        color: AppColor.themeColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusGeometry.circular(5),
                                        ),
                                        child: Icon(
                                          Icons.favorite_outline,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Transform.scale(
                              scale: 1,
                              child: SizedBox(
                                width: 80,
                                child: ItemIncDecButton(
                                  text: controller.productQuantityNumber.value
                                      .toString(),
                                  plusOnTap: controller.incrementProductQty,
                                  minusOnTap: controller.decrementProductQty,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text('Color', style: Get.textTheme.bodyLarge),
                        _colorPicker(),
                        Text('Size', style: Get.textTheme.bodyLarge),
                        _sizePicker(),
                        const SizedBox(height: 16),
                        Text('Description', style: Get.textTheme.bodyLarge),
                        Text(
                          'Your current code uses a single boolean (isPicked) for all items and a tap handler (checkPick) that doesn’t know which index was tapped, so every circle either shows the check or not at the same time. The fix is to track a selectedIndex (or a list of booleans) and pass the tapped index to the handler so only that item shows the check icon. Using GetX, prefer an Rx<int?> for single selection, or RxList<bool> for multi-select, and rebuild each item with Obx so it reacts when that index changes.',
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                  SizedBox(height: 100),
                ],
              );
            }),
          ),
          Container(
            height: 120,
            padding: EdgeInsets.all(12),
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              color: Colors.white,
            ),
          ),
          PriceDetailsCart(buttonName: 'Add To Cart'),
        ],
      ),
    );
  }

  SizedBox _sizePicker() {
    return SizedBox(
      height: 35,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: controller.productSize.length,
        itemBuilder: (_, index) {
          return Obx(() {
            final isPicked = controller.currentProductSizeIndex.value == index;
            return GestureDetector(
              onTap: () => controller.checkSizePick(index),
              child: Container(
                height: 30,
                alignment: Alignment.center,
                width: 30,
                decoration: BoxDecoration(
                  border: Border.all(width: .5, color: Colors.black),
                  color: isPicked ? AppColor.themeColor : Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Text(controller.productSize[index]),
              ),
            );
          });
        },
        separatorBuilder: (_, index) {
          return const SizedBox(width: 12);
        },
      ),
    );
  }

  SizedBox _colorPicker() {
    return SizedBox(
      height: 35,

      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: controller.productColor.length,
        itemBuilder: (context, index) {
          return Obx(() {
            final isPicked = controller.currentPickerIndex.value == index;
            return GestureDetector(
              onTap: () => controller.checkColorPick(index),
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  border: Border.all(width: .5, color: Colors.black),
                  color: controller.productColor[index],
                  shape: BoxShape.circle,
                ),
                child: isPicked ? Icon(Icons.check, color: Colors.white) : null,
              ),
            );
          });
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 12);
        },
      ),
    );
  }

  Stack _productImageViewer() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          items: controller.productImage,
          options: CarouselOptions(
            aspectRatio: 21 / 14,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              controller.currentProductImageIndex.value = index;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Obx(() {
            return AnimatedSmoothIndicator(
              effect: WormEffect(
                dotHeight: 7,
                dotWidth: 7,
                spacing: 5,
                activeDotColor: AppColor.themeColor,
                dotColor: Colors.white,
              ),
              activeIndex: controller.currentProductImageIndex.value,
              count: controller.productImage.length,
            );
          }),
        ),
      ],
    );
  }
}

class PriceDetailsCart extends StatelessWidget {
  final double? height;
  final String buttonName;
  const PriceDetailsCart({super.key, this.height, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 120,
      padding: EdgeInsets.all(12),
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        color: AppColor.themeColor.withValues(alpha: .2),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: [
              Text('Price'),
              Text('\$1000', style: TextStyle(color: AppColor.themeColor)),
            ],
          ),
          FilledButton(onPressed: () {}, child: Text(buttonName)),
        ],
      ),
    );
  }
}
