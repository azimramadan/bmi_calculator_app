import 'package:flutter/material.dart';

class GenderButtonWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final void Function()? onTap;
  const GenderButtonWidget(
      {super.key,
      required this.text,
      required this.icon,
      this.onTap,
      required this.color});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 35),
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 50,
              weight: 600,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 18, color: Color(0xff888A99)),
            )
          ],
        ),
      ),
    );
  }
}
