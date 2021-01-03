import 'package:bmi_calculator/utils/bmi_calculator.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator/theme/styles.dart';
import 'package:bmi_calculator/ui/components/gender_card.dart';
import 'package:bmi_calculator/ui/components/bottom_button.dart';
import 'package:bmi_calculator/ui/components/reusable_card.dart';
import 'package:bmi_calculator/ui/components/stepper.dart';
import 'package:bmi_calculator/ui/screens/results_page.dart';

enum Gender { female, male }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender gender;
  int height = 180;
  int weight = 70;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GenderCard(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                        onTap: () {
                          setState(() => {gender = Gender.male});
                        },
                        active: gender == Gender.male,
                      ),
                    ),
                    const SizedBox(width: 15.0),
                    Expanded(
                      child: GenderCard(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                        onTap: () {
                          setState(() => {gender = Gender.female});
                        },
                        active: gender == Gender.female,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: ReusableCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('HEIGHT', style: AppStyles.labelStyle),
                      RichText(
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          text: height.toString(),
                          style: AppStyles.numberStyle,
                          children: [
                            TextSpan(
                              text: 'cm',
                              style: AppStyles.labelStyle.copyWith(
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Slider(
                        min: 50.0,
                        max: 230.0,
                        value: height.toDouble(),
                        onChanged: (double value) {
                          setState(() {
                            height = value.round();
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        child: CustomStepper(
                          label: 'WEIGHT',
                          unit: 'kg',
                          value: weight,
                          onChange: (int value) {
                            setState(() {
                              weight = value;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(width: 15.0),
                    Expanded(
                        child: ReusableCard(
                      child: CustomStepper(
                        label: 'Age',
                        value: age,
                        onChange: (int value) {
                          setState(() {
                            age = value;
                          });
                        },
                      ),
                    )),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            BottomButton(
              text: 'CALCULATE',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultsPage(bmi: calculateBMI(height, weight))),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
