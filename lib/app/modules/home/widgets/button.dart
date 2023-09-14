import 'package:flutter/material.dart';

class ButtonCalculator extends StatelessWidget {
  final Color colorShadow;
  final Color color;
  final Color colorText;
  final String text;
  final Function function;
  const ButtonCalculator(
      {super.key,
      required this.color,
      required this.colorText,
      required this.text,
      required this.colorShadow,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => function(),
      child: Container(
        padding: const EdgeInsets.all(1),
        width: 71.75,
        height: 72,
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          shadows: [
            BoxShadow(
              color: colorShadow,
              blurRadius: 4,
              offset: const Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: colorText,
              fontSize: 32,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
