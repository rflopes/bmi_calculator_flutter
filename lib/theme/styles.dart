import 'package:bmi_calculator/theme/colors.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static const TextStyle titleStyle = TextStyle(
    fontSize: 50.0,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle labelStyle = TextStyle(
    fontSize: 18.0,
    color: AppColors.lightGrey,
  );

  static const TextStyle resultTextStyle = TextStyle(
    fontSize: 24.0,
    color: AppColors.green,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle bmiTextStyle = TextStyle(
    fontSize: 100.0,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle bodyTextStyle = TextStyle(
    fontSize: 20.0,
  );

  static const TextStyle numberStyle = TextStyle(
    fontSize: 50.0,
    fontWeight: FontWeight.w900,
    color: Colors.white,
  );

  static const TextStyle buttonFontStyle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );
}
