import 'package:bmi_calculator_app/widgets/increase_and_decrease_button_widget.dart';
import 'package:flutter/material.dart';

class CounterButtonWidget extends StatelessWidget {
  const CounterButtonWidget(
      {super.key,
      required this.text,
      required this.weight,
      this.clickToDecrease,
      this.clickToIncrease});
  final String text;
  final double weight;
  final void Function()? clickToDecrease;
  final void Function()? clickToIncrease;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          color: const Color(0xff17172F),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 18, color: Color(0xff888A99)),
          ),
          Text(
            weight.toInt().toString(),
            style: const TextStyle(
                color: Colors.white, fontSize: 42, fontWeight: FontWeight.w500),
          ),
          IncreaseAndDecreaseButtonWidget(
            clickToDecrease: clickToDecrease,
            clickToIncrease: clickToIncrease,
          ),
        ],
      ),
    );
  }
}
