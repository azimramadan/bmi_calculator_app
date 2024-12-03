import 'package:flutter/material.dart';

void calculateBMI(BuildContext context,
    {required double weight, required double height, required String gender}) {
  if (gender != '') {
    double bmi = weight / ((height / 100) * (height / 100));
    String status;

    if (bmi < 18.5) {
      gender == 'Male'
          ? status = "Underweight (Male)"
          : status = "Underweight (Female)";
    } else if (bmi < 25) {
      gender == 'Male'
          ? status = "Normal weight (Male)"
          : status = "Normal weight (Female)";
    } else if (bmi < 30) {
      gender == 'Male'
          ? status = "Overweight (Male)"
          : status = "Overweight (Female)";
    } else {
      gender == 'Male' ? status = "Obese (Male)" : status = "Obese (Female)";
    }

    // عرض AlertDialog
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color(0xff1A1B2D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Your BMI Result',
                style: TextStyle(
                  color: Color(0xff888A99),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                bmi.toStringAsFixed(2),
                style: const TextStyle(
                  color: Color(0xffED0D54),
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                status,
                style: const TextStyle(
                  color: Color(0xff888A99),
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffED0D54),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 20.0),
                ),
                child: const Text(
                  'OK',
                  style: TextStyle(
                    color: Color(0xff03051A),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  } else {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xff1A1B2D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          title: const Text(
            'Gender Not Selected',
            style: TextStyle(
              color: Color(0xffED0D54),
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          content: const Text(
            'Please select your gender to proceed.',
            style: TextStyle(
              color: Color(0xff888A99),
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          ),
          actions: [
            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffED0D54),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 20.0),
                ),
                child: const Text(
                  'OK',
                  style: TextStyle(
                    color: Color(0xff1A1B2D),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
