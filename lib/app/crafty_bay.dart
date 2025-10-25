import 'package:crafty_bay/app/language_localization.dart';
import 'package:crafty_bay/app/theme/app_theme_data.dart';
import 'package:crafty_bay/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
      theme: AppThemeData.lightThemeData,
      translations: LanguageLocalization(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
    );
  }
}
