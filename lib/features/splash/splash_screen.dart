import 'package:crafty_bay/app/utils/assets_path.dart';
import 'package:crafty_bay/app/utils/app_package_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Spacer(),
            SvgPicture.asset(AssetsPath.logoSvgPath),
            Spacer(),
            CircularProgressIndicator.adaptive(),
            const SizedBox(height: 10),
            Text(AppPackageInfo.appVersion),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
