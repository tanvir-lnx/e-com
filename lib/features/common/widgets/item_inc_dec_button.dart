import 'package:crafty_bay/app/theme/app_color.dart';
import 'package:flutter/material.dart';

class ItemIncDecButton extends StatelessWidget {
  final GestureTapCallback? plusOnTap;
  final GestureTapCallback? minusOnTap;
  final String text;
  const ItemIncDecButton({
    super.key,
    required this.plusOnTap,
    required this.minusOnTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 6,
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColor.themeColor.withValues(alpha: .4),
            borderRadius: BorderRadius.circular(5),
          ),
          child: InkWell(
            onTap: minusOnTap,
            child: Icon(Icons.remove, color: Colors.white),
          ),
        ),
        Text(text, style: TextStyle(fontWeight: FontWeight.w600)),
        Container(
          decoration: BoxDecoration(
            color: AppColor.themeColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: InkWell(
            onTap: plusOnTap,
            child: Icon(Icons.add, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
