// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

const MaterialColor mycolur = const MaterialColor(
    0xFF0A0E21, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xFF0A0E21), //10%
      100: const Color(0xFF0A0E21), //20%
      200: const Color(0xFF0A0E21), //30%
      300: const Color(0xFF0A0E21), //40%
      400: const Color(0xFF0A0E21), //50%
      500: const Color(0xFF0A0E21), //60%
      600: const Color(0xFF0A0E21), //70%
      700: const Color(0xFF0A0E21), //80%
      800: const Color(0xFF0A0E21), //90%
      900: const Color(0xFF0A0E21), //100%
    });
const MaterialColor mythumb = const MaterialColor(
    0xFFEB1555, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xFFEB1555), //10%
      100: const Color(0xFFEB1555), //20%
      200: const Color(0xFFEB1555), //30%
      300: const Color(0xFFEB1555), //40%
      400: const Color(0xFFEB1555), //50%
      500: const Color(0xFFEB1555), //60%
      600: const Color(0xFFEB1555), //70%
      700: const Color(0xFFEB1555), //80%
      800: const Color(0xFFEB1555), //90%
      900: const Color(0xFFEB1555), //100%
    });

const kBottomContainerHeight = 80.0;
const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF111328);
const kBottomContainerColor = Color(0xFFEB1555);

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const kNumberTextStyle = TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900);
