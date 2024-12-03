import 'package:bmi_calculator_app/helpers/calculate_BMI_and_show_dialog.dart';
import 'package:flutter/material.dart';

class CalculaterButton extends StatelessWidget {
  const CalculaterButton({
    super.key,
    required this.height,
    required this.weight,
    required this.gender,
  });
  final String gender;
  final double height;
  final double weight;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        calculateBMI(context, weight: weight, height: height, gender: gender);
      },
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero, // تعديل الزوايا
        ),
        minimumSize: const Size(double.infinity, 55), // عرض كامل وارتفاع 55
        backgroundColor: const Color(0xffED0D54), // اللون الأحمر
      ),
      child: const Text(
        'CALCULATER',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 24,
          color: Colors.white, // لون النص
        ),
      ),
    );
  }
}
