import 'package:flutter/material.dart';

import 'package:bmi_calculator/theme/colors.dart';

class Button extends StatelessWidget {
  factory Button.primary({
    final String title,
    final VoidCallback onTap,
  }) {
    return Button(
      title: title,
      bgColor: AppColors.black,
      fontColor: AppColors.white,
      onTap: onTap,
    );
  }

  factory Button.secondary({
    final String title,
    final VoidCallback onTap,
  }) {
    return Button(
      title: title,
      bgColor: AppColors.white,
      fontColor: AppColors.black,
      onTap: onTap,
    );
  }

  Button({
    this.title,
    this.bgColor,
    this.fontColor,
    this.onTap,
  });

  final VoidCallback onTap;
  final Color bgColor;
  final Color fontColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: bgColor,
      ),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        onPressed: onTap,
        color: bgColor,
        disabledColor: bgColor.withOpacity(0.1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title.toUpperCase(),
              style: TextStyle(
                color: fontColor,
                fontSize: 16.0,
                fontFamily: 'Futura',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      height: 50,
      width: MediaQuery.of(context).size.width,
    );
  }
}
