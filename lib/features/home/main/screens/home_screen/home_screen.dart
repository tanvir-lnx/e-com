import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:crafty_bay/app/theme/app_color.dart';
import 'package:crafty_bay/app/utils/assets_path.dart';
import 'package:crafty_bay/features/common/widgets/app_bar_icon_button.dart';
import 'package:crafty_bay/features/common/widgets/product_card.dart';
import 'package:crafty_bay/features/home/main/screens/home_screen/home_screen_controller.dart';
import 'package:crafty_bay/features/home/shared/widgets/product_catergory_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Image.asset(AssetsPath.navLogoPath),
        ),
        actions: [
          AppBarIconButton(onPressed: () {}, icon: Icon(CupertinoIcons.person)),
          AppBarIconButton(onPressed: () {}, icon: Icon(CupertinoIcons.phone)),
          AppBarIconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell)),
          const SizedBox(width: 10),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Obx(
             () {
              return Column(
                children: [
                  _searchField(),
                  const SizedBox(height: 10),
                  Column(
                            spacing: 5,
                            children: [
                              _carouselImageSilder(),
                              _carouselIndexIndicator(),
                            ],
                          ),
                  
                  _headerTtitle(
                    onTap: controller.goToCategory,
                    title: 'All Categories',
                  ),
                  const SizedBox(height: 12),
              
                  _catergoryItemListView(),
              
                  SizedBox(height: 10),
                  _headerTtitle(title: 'Popular'),
                  SizedBox(height: 10),
                  _popularItemList(),
                  SizedBox(height: 10),
              
                  _headerTtitle(title: 'Special'),
                  SizedBox(height: 10),
                  _popularItemList(),
                  SizedBox(height: 10),
                  _headerTtitle(title: 'New'),
                  SizedBox(height: 10),
                  _popularItemList(),
                ],
              );
            }
          ),
        ),
      ),
    );
  }

  SizedBox _popularItemList() {
    return SizedBox(
      height: 160,

      child: ListView.separated(
        // shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (_, index) {
          return ProductCard(iconData: Icon(Icons.favorite_outline));
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 10);
        },
      ),
    );
  }

  SizedBox _catergoryItemListView() {
    return SizedBox(
      height: 100,

      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          final items = controller.allCatergoryModel[index];
          return ProductCategoryItem(title: items.title, icon: items.icon);
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 16);
        },
      ),
    );
  }

  Row _headerTtitle({required String title, GestureTapCallback? onTap}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Get.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w700),
        ),

        RichText(
          text: TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onTap,
            style: TextStyle(color: AppColor.themeColor),
            text: 'Sell All',
          ),
        ),
      ],
    );
  }

  CarouselSlider _carouselImageSilder() {
    return CarouselSlider(
      items: controller.carsouselImages
          .map(
            (imageModel) => Builder(
              builder: (_) => CachedNetworkImage(imageUrl: imageModel.photoUrl),
            ),
          )
          .toList(),

      options: CarouselOptions(
        padEnds: false,
        enlargeCenterPage: false,
        onPageChanged: (index, reason) {
          controller.currentPageIndex.value = index;
        },
        autoPlay: true,
        viewportFraction: 1,
        aspectRatio: 21 / 9,
      ),
    );
  }

  AnimatedSmoothIndicator _carouselIndexIndicator() {
    
      return AnimatedSmoothIndicator(
        effect: WormEffect(
          dotHeight: 5,
          dotWidth: 5,
          spacing: 5,
          activeDotColor: AppColor.themeColor,
          dotColor: Colors.grey.shade200,
        ),
        activeIndex: controller.currentPageIndex.value,
        count: controller.carsouselImages.length,
      );
    }
  }

  TextField _searchField() {
    return TextField(
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        prefixIcon: Icon(CupertinoIcons.search),
        hintText: 'Search',
        fillColor: Colors.grey[200],
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

