import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator/theme/styles.dart';

class CustomStepper extends StatelessWidget {
  CustomStepper({
    Key key,
    this.label,
    @required this.value,
    this.unit,
    this.step = 1,
    this.onChange,
  });

  final String label;
  final int value;
  final int step;
  final String unit;
  final Function onChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: AppStyles.labelStyle,
        ),
        RichText(
          overflow: TextOverflow.ellipsis,
          text: TextSpan(
            text: value.toString(),
            style: AppStyles.numberStyle,
            children: [
              if (unit != null)
                TextSpan(
                  text: unit,
                  style: AppStyles.labelStyle.copyWith(
                    fontWeight: FontWeight.normal,
                  ),
                ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              heroTag: UniqueKey(),
              child: Icon(
                FontAwesomeIcons.minus,
                color: Colors.white,
              ),
              onPressed: () {
                onChange(value - step);
              },
            ),
            const SizedBox(width: 15.0),
            FloatingActionButton(
              heroTag: UniqueKey(),
              child: Icon(
                FontAwesomeIcons.plus,
                color: Colors.white,
              ),
              onPressed: () {
                onChange(value + step);
              },
            ),
          ],
        ),
      ],
    );
  }
}
