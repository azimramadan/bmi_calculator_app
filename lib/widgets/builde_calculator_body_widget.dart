import 'package:bmi_calculator_app/widgets/calculater_button_widget.dart';
import 'package:bmi_calculator_app/widgets/counter_button_widget.dart';
import 'package:bmi_calculator_app/widgets/gender_button_widget.dart';
import 'package:bmi_calculator_app/widgets/slider_to_select_weight_widget.dart';
import 'package:flutter/material.dart';

class BuildeCalculatorBodyWidget extends StatefulWidget {
  const BuildeCalculatorBodyWidget({super.key});

  @override
  State<BuildeCalculatorBodyWidget> createState() =>
      _BuildeCalculatorBodyWidgetState();
}

class _BuildeCalculatorBodyWidgetState
    extends State<BuildeCalculatorBodyWidget> {
  int selectWithIndex = -1;
  double height = 174.0;
  double weight = 60;
  double age = 29;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: GenderButtonWidget(
                          color: selectWithIndex == 0
                              ? const Color(0xffED0D54)
                              : const Color(0xff17172F),
                          text: ' MALE ',
                          icon: Icons.male,
                          onTap: () {
                            setState(() {
                              selectWithIndex = 0;
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 40),
                      Expanded(
                        child: GenderButtonWidget(
                          color: selectWithIndex == 1
                              ? const Color(0xffED0D54)
                              : const Color(0xff17172F),
                          text: ' FEMALE ',
                          icon: Icons.female,
                          onTap: () {
                            setState(() {
                              selectWithIndex = 1;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SliderToSelectWeightWidget(
                    heightText: height.toInt().toString(),
                    heightValue: height,
                    onChanged: (newHeight) {
                      setState(() {
                        height = newHeight;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: CounterButtonWidget(
                          text: 'WEIGHT',
                          weight: weight,
                          clickToDecrease: () {
                            if (weight >= 3) {
                              setState(() {
                                weight -= 1;
                              });
                            }
                          },
                          clickToIncrease: () {
                            if (weight >= 2 && weight < 700) {
                              setState(() {
                                weight += 1;
                              });
                            }
                          },
                        ),
                      ),
                      const SizedBox(width: 40),
                      Expanded(
                        child: CounterButtonWidget(
                          text: 'AGE',
                          weight: age,
                          clickToDecrease: () {
                            if (age > 2) {
                              setState(() {
                                age -= 1;
                              });
                            }
                          },
                          clickToIncrease: () {
                            if (age >= 2 && age < 120) {
                              setState(() {
                                age += 1;
                              });
                            }
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: CalculaterButton(
            gender: selectWithIndex == 0
                ? 'Male'
                : selectWithIndex == 1
                    ? 'Female'
                    : '',
            height: height,
            weight: weight,
          ),
        )
      ],
    );
  }
}
