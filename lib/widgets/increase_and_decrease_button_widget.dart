import 'package:bmi_calculator_app/widgets/custom_Iicon_button_widget.dart';
import 'package:flutter/material.dart';

class IncreaseAndDecreaseButtonWidget extends StatelessWidget {
  const IncreaseAndDecreaseButtonWidget(
      {super.key, this.clickToIncrease, this.clickToDecrease});

  final void Function()? clickToIncrease;
  final void Function()? clickToDecrease;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomIiconButtonWidget(
          icon: Icons.remove,
          onPressed: clickToDecrease,
        ),
        const SizedBox(width: 10),
        CustomIiconButtonWidget(
          icon: Icons.add,
          onPressed: clickToIncrease,
        ),
      ],
    );
  }
}
