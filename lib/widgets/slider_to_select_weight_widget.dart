import 'package:flutter/material.dart';

class SliderToSelectWeightWidget extends StatelessWidget {
  const SliderToSelectWeightWidget(
      {super.key,
      required this.heightText,
      required this.heightValue,
      this.onChanged});
  final String heightText;
  final double heightValue;
  final void Function(double)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff17172F),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('HEIGHT',
                style: TextStyle(fontSize: 18, color: Color(0xff888A99))),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  heightText,
                  style: const TextStyle(
                      fontSize: 42, fontWeight: FontWeight.w600),
                ),
                const Text(
                  'cm',
                  style: TextStyle(color: Color(0xff888A99)),
                )
              ],
            ),
            SliderTheme(
              data: const SliderThemeData(
                trackHeight: 3.0,
                trackShape: RectangularSliderTrackShape(),
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),

                overlayShape: RoundSliderOverlayShape(
                    overlayRadius: 24.0), // التحكم في الحجم عند التفاعل
              ),
              child: Slider(
                activeColor: Colors.white,
                inactiveColor: const Color(0xff8B8D9B),
                thumbColor: const Color(0xffED0D54),
                value: heightValue,
                min: 50,
                max: 300,
                divisions: 250,
                // label: height.round().toString(),
                onChanged: onChanged,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
