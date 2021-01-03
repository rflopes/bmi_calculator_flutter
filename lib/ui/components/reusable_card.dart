import 'package:flutter/material.dart';

import 'package:bmi_calculator/theme/colors.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key key,
    this.color = AppColors.cardColor,
    this.child,
  }) : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
    );
  }
}
