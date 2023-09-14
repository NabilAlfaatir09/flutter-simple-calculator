import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  const InputText({
    super.key,
    required this.color,
    required this.size,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.end,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w300),
    );
  }
}
