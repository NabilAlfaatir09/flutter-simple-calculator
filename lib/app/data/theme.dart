import 'package:flutter/material.dart';

class Themes {
  static final ThemeData lightTheme = ThemeData(
      brightness: Brightness.light, scaffoldBackgroundColor: Colors.white);
  static final ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color.fromRGBO(30, 30, 30, 100));
}
