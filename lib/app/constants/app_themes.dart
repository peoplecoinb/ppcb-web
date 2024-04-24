import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemes {
  AppThemes._();

  static ThemeData light = ThemeData(
    fontFamily: 'Lekton',
    primaryColor: AppColors.primary,
    secondaryHeaderColor: AppColors.secondary,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.success,
    ),
  );

  static ThemeData dark = ThemeData(
    fontFamily: 'Lekton',
    primaryColor: AppColors.primary,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.black,
    secondaryHeaderColor: AppColors.secondary,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.black,
      selectedItemColor: AppColors.success,
    ),
  );
}
