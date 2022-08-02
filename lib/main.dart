// ignore_for_file: prefer_const_constructors, unnecessary_const, library_private_types_in_public_api, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';
void main() => runApp(BMICalculator());



class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: mycolur,
        scaffoldBackgroundColor: mycolur,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      home: InputPage(),
    );
  }
}
