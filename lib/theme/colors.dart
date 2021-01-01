import 'package:flutter/material.dart';

class AppColors {
  static Color get white => Color(0xFFF9F9F9);
  static Color get black => Color(0xFF3B3B4F);
  static Color get red => Color(0xFFF48C8D);
  static Color get green => Color(0xFFC1E999);
  static Color get blue => Color(0xFF87B1E3);
  static Color get yellow => Color(0xFFFAE488);
  static Color get darkGrey => Color(0xFF96ACA1);
  static Color get lightGrey => Color(0xFFD7DBDB);
}

class ResultColors {
  static List<Color> get idle => [AppColors.white, AppColors.black];
  static List<Color> get underweight => [AppColors.blue, AppColors.white];
  static List<Color> get normal => [AppColors.green, AppColors.black];
  static List<Color> get overweight => [AppColors.yellow, AppColors.black];
  static List<Color> get obsese => [AppColors.red, AppColors.white];
}
