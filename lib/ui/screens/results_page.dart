import 'package:flutter/material.dart';

import 'package:bmi_calculator/theme/colors.dart';
import 'package:bmi_calculator/theme/styles.dart';
import 'package:bmi_calculator/ui/components/bottom_button.dart';
import 'package:bmi_calculator/ui/components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    @required this.bmi,
  });

  final double bmi;

  Color _getStyleForBMI() {
    if (bmi < 18.5) {
      return AppColors.blue;
    } else if (bmi < 24.9) {
      return AppColors.green;
    } else if (bmi < 29.9) {
      return AppColors.yellow;
    }
    return AppColors.red;
  }

  String _getInterpretationForBMI() {
    if (bmi < 18.5) {
      return 'UNDERWEIGHT';
    } else if (bmi < 24.9) {
      return 'NORMAL';
    } else if (bmi < 29.9) {
      return 'OVERWEIGHT';
    }
    return 'OBESE';
  }

  String _getMessageForBMI() {
    if (bmi < 18.5) {
      return 'A BIT MORE WEIGHT\nWOULD DO NO ARM';
    } else if (bmi < 24.9) {
      return 'YOU’RE IN GREAT SHAPE\nKEEP YOUR HEALTHY STYLE';
    } else if (bmi < 29.9) {
      return 'TIME TO TAKE SOME\nATTENTION TO WHAT YOU EAT';
    }
    return 'TIME FOR SOME\nMORE HEALTHY SNACKS';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                'Your result',
                style: AppStyles.titleStyle,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                child: ReusableCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        _getInterpretationForBMI(),
                        style: AppStyles.resultTextStyle.copyWith(
                          color: _getStyleForBMI(),
                        ),
                      ),
                      Text(bmi.toStringAsFixed(1), style: AppStyles.bmiTextStyle),
                      Text(
                        _getMessageForBMI(),
                        style: AppStyles.bodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            BottomButton(
              text: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
