import 'package:flutter/material.dart';

// Define the theme for the app
ThemeData appTheme() {
  return ThemeData(
    primaryColor: AppColors.primaryColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: AppColors.accentColor, // Menggunakan colorScheme untuk warna aksen
    ),
    backgroundColor: AppColors.backgroundColor,
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 14, color: Color.fromARGB(255, 253, 252, 252)),
      headline2: TextStyle(fontSize: 18, color: AppColors.textColor),
      bodyText1: TextStyle(fontSize: 16, color: AppColors.textColor),
    ),
  );
}

// Define the colors for the app
class AppColors {
  static const Color primaryColor = Colors.blue;
  static const Color accentColor = Colors.blueAccent;
  static const Color backgroundColor = Colors.white;
  static const Color textColor = Colors.black87;
  static const Color hintColor = Colors.grey;
}
