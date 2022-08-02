// ignore_for_file: prefer_const_constructors, unnecessary_const, library_private_types_in_public_api, use_key_in_widget_constructors, camel_case_types, prefer_const_constructors_in_immutables, sort_child_properties_last, avoid_print, unused_local_variable, annotate_overrides, override_on_non_overriding_member
import 'reusable_card.dart';
import 'icon_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'result_page.dart';
import 'calculation.dart';

enum GenderType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  GenderType? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 25;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusableCard(
                    onPress: (() {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    }),
                    cardChild: iconcard(
                      icon: FontAwesomeIcons.mars,
                      label: "Male",
                    ),
                    colour: selectedGender == GenderType.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                  ),
                ),
                Expanded(
                  child: reusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.female;
                      });
                    },
                    cardChild:
                        iconcard(icon: FontAwesomeIcons.venus, label: 'Female'),
                    colour: selectedGender == GenderType.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: reusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Height',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: mythumb,
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 10.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 20.0),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  )
                ],
              ),
              colour: kActiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                                backgroundColor: Color(0xFF4C4F5E),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: Icon(FontAwesomeIcons.minus)),
                            SizedBox(
                              width: 20,
                            ),
                            FloatingActionButton(
                                backgroundColor: Color(0xFF4C4F5E),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(FontAwesomeIcons.plus)),
                          ],
                        ),
                      ],
                    ),
                    colour: kActiveCardColor,
                  ),
                ),
                Expanded(
                  child: reusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                                backgroundColor: Color(0xFF4C4F5E),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Icon(FontAwesomeIcons.minus)),
                            SizedBox(
                              width: 20,
                            ),
                            FloatingActionButton(
                                backgroundColor: Color(0xFF4C4F5E),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(FontAwesomeIcons.plus)),
                          ],
                        ),
                      ],
                    ),
                    colour: kActiveCardColor,
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
            child: Container(
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              height: kBottomContainerHeight,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
