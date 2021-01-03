import 'package:flutter/material.dart';

import 'package:bmi_calculator/theme/colors.dart';
import 'package:bmi_calculator/theme/styles.dart';
import 'package:bmi_calculator/ui/components/reusable_card.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    Key key,
    @required this.icon,
    @required this.text,
    this.onTap,
    this.active = false,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final VoidCallback onTap;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ReusableCard(
        color: active == true ? AppColors.cardColor : AppColors.inactiveGenderCardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 80.0,
            ),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              text,
              style: AppStyles.labelStyle,
            ),
          ],
        ),
      ),
    );
  }
}
