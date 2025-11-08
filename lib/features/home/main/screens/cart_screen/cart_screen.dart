import 'package:crafty_bay/app/theme/app_color.dart';
import 'package:crafty_bay/app/utils/assets_path.dart';
import 'package:crafty_bay/features/common/widgets/item_inc_dec_button.dart';
import 'package:crafty_bay/features/home/main/screens/cart_screen/cart_screen_controller.dart';
import 'package:crafty_bay/features/product/product_details/product_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class CartScreen extends GetView<CartScreenController> {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Cart'),
        backgroundColor: Colors.white,
        leading: PopScope(
          onPopInvokedWithResult: (didPop, result) => controller.goToHome(),
          child: BackButton(),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (_, index) {
                    return ItemCartList();
                  },
                ),
              ),
              SizedBox(height: 80),
            ],
          ),
          Container(
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              color: Colors.white,
            ),
          ),
          PriceDetailsCart(buttonName: 'Checkout', height: 80),
        ],
      ),
    );
  }
}

class ItemCartList extends StatelessWidget {
  const ItemCartList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: Card(
        elevation: .2,
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(height: 90, child: Image.asset(AssetsPath.dummyImage)),
                SizedBox(width: 4),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New Year Special Shoe',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Color: Red, Size: X',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '\$100',
                      style: TextStyle(
                        fontSize: 15,
                        color: AppColor.themeColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(CupertinoIcons.trash),

                    Spacer(),
                    ItemIncDecButton(
                      text: '',
                      plusOnTap: () {},
                      minusOnTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
