import 'package:flutter/material.dart';

class AppBarIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onPressed;
  const AppBarIconButton({
    required this.onPressed,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: CircleAvatar(
        backgroundColor: Colors.grey[200],
        child: IconButton(splashRadius: .1, onPressed: onPressed, icon: icon),
      ),
    );
  }
}
