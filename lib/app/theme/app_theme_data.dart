import 'package:crafty_bay/app/theme/app_color.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  static ThemeData get lightThemeData => ThemeData(
    colorSchemeSeed: AppColor.themeColor,
    textTheme: TextTheme(
      titleLarge: TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
      titleSmall: TextStyle(fontSize: 14, color: Colors.black54),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.only(left: 16, top: 16),
      hintStyle: TextStyle(color: Colors.black38, letterSpacing: -.5),
      errorStyle: TextStyle(),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColor.themeColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColor.themeColor),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColor.themeColor),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColor.themeColor),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColor.themeColor,
        foregroundColor: Colors.white,
        fixedSize: Size(double.maxFinite, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8),
        ),
      ),
    ),
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: AppColor.themeColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
        ),
      ),
    ),
  );
}
