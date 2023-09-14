import 'package:flutter/material.dart';

class OutputText extends StatelessWidget {
  final String text;
  const OutputText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.end,
      style: const TextStyle(
          color: Color.fromRGBO(136, 131, 131, 1),
          fontSize: 40,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w300),
    );
  }
}
