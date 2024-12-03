import 'package:flutter/material.dart';

class CustomIiconButtonWidget extends StatelessWidget {
  const CustomIiconButtonWidget(
      {super.key, this.onPressed, required this.icon});
  final void Function()? onPressed;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff4B4E5F),
          borderRadius: BorderRadius.circular(24)),
      child: IconButton(
        onPressed: onPressed,
        iconSize: 35,
        icon: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
