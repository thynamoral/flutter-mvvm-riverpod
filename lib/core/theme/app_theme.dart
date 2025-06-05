import 'package:client/core/theme/app_color_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static OutlineInputBorder border(Color color) => OutlineInputBorder(
    borderRadius: borderRadius(),
    borderSide: BorderSide(color: color, width: 2),
  );

  static borderRadius() => BorderRadius.circular(8);

  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColor.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.backgroundColor,
      foregroundColor: AppColor.whiteColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(16),
      border: border(AppColor.borderColor),
      focusedBorder: border(AppColor.gradient2),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(16),
        backgroundColor: AppColor.gradient1,
        foregroundColor: AppColor.whiteColor,
        shape: RoundedRectangleBorder(borderRadius: borderRadius()),
      ),
    ),
  );
}
