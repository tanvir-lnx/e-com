import 'package:crafty_bay/app/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainNavHolder extends StatelessWidget {
  const MainNavHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 14.0, right: 14),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: SizedBox.expand(
                
                child: Image.asset(AssetsPath.navLogoPath),
              ),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.man_2)),
                IconButton(onPressed: () {}, icon: Icon(Icons.man_2)),
                IconButton(onPressed: () {}, icon: Icon(Icons.man_2)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
