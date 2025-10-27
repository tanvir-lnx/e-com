import 'package:crafty_bay/app/routes/app_pages.dart';
import 'package:crafty_bay/app/routes/app_routes.dart';
import 'package:crafty_bay/app/utils/language_localization.dart';
import 'package:crafty_bay/app/theme/app_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.splashScreen,

      theme: AppThemeData.lightThemeData,
      translations: LanguageLocalization(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      getPages: AppPages.pages,
    );
  }
}
