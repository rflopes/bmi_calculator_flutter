import 'package:flutter/material.dart';

import 'package:bmi_calculator/theme/colors.dart';
import 'package:bmi_calculator/theme/styles.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key key,
    this.onTap,
    this.text,
  }) : super(key: key);

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: AppColors.red,
        height: 60.0 + MediaQuery.of(context).padding.bottom,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Center(
            child: Text(
              text,
              style: AppStyles.buttonFontStyle,
            ),
          ),
        ),
      ),
    );
  }
}
