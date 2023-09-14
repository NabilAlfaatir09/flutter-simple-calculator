import 'package:flutter/material.dart';
import 'package:flutter_calculator/app/modules/home/controllers/calculator_controller.dart';
import 'package:get/get.dart';

class ToggleButton extends StatelessWidget {
  final Color color;
  const ToggleButton({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    final homeC = Get.find<CalculatorController>();
    return Container(
      width: 72,
      height: 32,
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Switch(
        value: homeC.isValue.value,
        onChanged: (value) {
          homeC.isValue.value = value;
          Get.changeThemeMode(
              Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
        },
        activeThumbImage: const AssetImage("assets/moon.png"),
        inactiveThumbImage: const AssetImage("assets/sun.png"),
        inactiveTrackColor: Colors.transparent,
        activeTrackColor: Colors.transparent,
      ),
    );
  }
}
