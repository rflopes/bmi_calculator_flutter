import 'package:bmi_calculator/theme/colors.dart';
import 'package:flutter/material.dart';

import 'package:bmi_calculator/ui/screens/home_page.dart';

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.primary,
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.white,
          inactiveTrackColor: AppColors.lightGrey,
          trackHeight: 2.0,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
          thumbColor: AppColors.red,
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
          overlayColor: AppColors.red.withOpacity(0.16),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: AppColors.darkGrey),
      ),
      home: HomePage(),
    );
  }
}
