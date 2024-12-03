import 'package:bmi_calculator_app/widgets/builde_calculator_body_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMIApp());
}

class BMIApp extends StatefulWidget {
  const BMIApp({super.key});

  @override
  State<BMIApp> createState() => _BMIAppState();
}

class _BMIAppState extends State<BMIApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: const Color(0xff03051A),
        appBar: AppBar(
          backgroundColor: const Color(0xff04061D),
          title: const Text(
            'BMI CALCULATOR',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
        ),
        body: const BuildeCalculatorBodyWidget(),
      ),
    );
  }
}
