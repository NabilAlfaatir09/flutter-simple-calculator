import 'package:flutter/material.dart';
import 'package:flutter_calculator/app/modules/home/widgets/input_text.dart';

import 'package:get/get.dart';

import '../controllers/calculator_controller.dart';
import '../widgets/button.dart';
import '../widgets/output_text.dart';
import '../widgets/toggle_button.dart';

class CalculatorView extends GetView<CalculatorController> {
  const CalculatorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            // dibawah ini adalah toggle darkmode
            Obx(
              // ignore: unrelated_type_equality_checks
              () => (controller.isValue.value)
                  ? const Align(
                      alignment: Alignment.topCenter,
                      child: ToggleButton(color: Color(0xFF2E2F38)))
                  : const Align(
                      alignment: Alignment.topCenter,
                      child: ToggleButton(
                        color: Colors.white,
                      ),
                    ),
            ),
            const SizedBox(
              height: 40,
            ),
            // dibawah ini adalah tata letak output text
            Align(
              alignment: Alignment.topRight,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Obx(() => OutputText(
                          text: "${controller.resultValue}",
                        )),
                    Obx(
                      () => (controller.isValue.value)
                          ? InputText(
                              color: Colors.white,
                              size: 96,
                              text: controller.displayValue.value,
                            )
                          : InputText(
                              color: Colors.black,
                              size: 96,
                              text: controller.displayValue.value,
                            ),
                    )
                  ],
                ),
              ),
            ),
            // dibawah ini adalah tata letak untuk button
            const SizedBox(
              height: 20,
            ),
            // baris 1 !!!
            Obx(
              () => (controller.isValue.value)
                  ? Row(
                      children: <Widget>[
                        const SizedBox(width: 13),
                        ButtonCalculator(
                          colorText: const Color(0xFFFFFFFF),
                          color: const Color.fromRGBO(78, 80, 95, 1),
                          colorShadow:
                              const Color.fromRGBO(255, 255, 255, 0.25),
                          text: "C",
                          function: () => controller.onClearPress(),
                        ),
                        const SizedBox(width: 22),
                        ButtonCalculator(
                          colorText: const Color(0xFFFFFFFF),
                          color: const Color.fromRGBO(78, 80, 95, 1),
                          colorShadow:
                              const Color.fromRGBO(255, 255, 255, 0.25),
                          text: "+/-",
                          function: () => controller.onPlusMinusPress(),
                        ),
                        const SizedBox(width: 22),
                        ButtonCalculator(
                          colorText: const Color(0xFFFFFFFF),
                          color: const Color.fromRGBO(78, 80, 95, 1),
                          colorShadow:
                              const Color.fromRGBO(255, 255, 255, 0.25),
                          text: "%",
                          function: () => controller.onPercentPress(),
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        ButtonCalculator(
                          colorText: const Color(0xFFFFFFFF),
                          color: const Color(0xFFFFB906),
                          colorShadow:
                              const Color.fromRGBO(255, 255, 255, 0.25),
                          text: "÷",
                          function: () => controller.onOperatorPress("/"),
                        ),
                        const SizedBox(width: 24),
                      ],
                    )
                  : Row(
                      children: <Widget>[
                        const SizedBox(width: 13),
                        ButtonCalculator(
                          colorText: Colors.black,
                          color: const Color(0xFFD8D2DA),
                          colorShadow: const Color(0x3F000000),
                          text: "C",
                          function: () => controller.onClearPress(),
                        ),
                        const SizedBox(width: 22),
                        ButtonCalculator(
                          colorText: Colors.black,
                          color: const Color(0xFFD8D2DA),
                          colorShadow: const Color(0x3F000000),
                          text: "+/-",
                          function: () => controller.onPlusMinusPress(),
                        ),
                        const SizedBox(width: 22),
                        ButtonCalculator(
                          colorText: Colors.black,
                          color: const Color(0xFFD8D2DA),
                          colorShadow: const Color(0x3F000000),
                          text: "%",
                          function: () => controller.onPercentPress(),
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        ButtonCalculator(
                          colorText: Colors.black,
                          color: const Color(0xFFFFB906),
                          colorShadow: const Color(0x3F000000),
                          text: "÷",
                          function: () => controller.onOperatorPress("/"),
                        ),
                        const SizedBox(width: 24),
                      ],
                    ),
            ),
            const SizedBox(
              height: 20,
            ),
            // baris 2 !!!
            Obx(() => (controller.isValue.value)
                ? Row(
                    children: <Widget>[
                      const SizedBox(width: 13),
                      ButtonCalculator(
                        colorText: const Color(0xFFFFFFFF),
                        color: const Color.fromRGBO(46, 47, 56, 1),
                        colorShadow: const Color.fromRGBO(255, 255, 255, 0.25),
                        text: "7",
                        function: () => controller.onDigitPress("7"),
                      ),
                      const SizedBox(width: 22),
                      ButtonCalculator(
                        colorText: const Color(0xFFFFFFFF),
                        color: const Color.fromRGBO(46, 47, 56, 1),
                        colorShadow: const Color.fromRGBO(255, 255, 255, 0.25),
                        text: "8",
                        function: () => controller.onDigitPress("8"),
                      ),
                      const SizedBox(width: 22),
                      ButtonCalculator(
                        colorText: const Color(0xFFFFFFFF),
                        color: const Color.fromRGBO(46, 47, 56, 1),
                        colorShadow: const Color.fromRGBO(255, 255, 255, 0.25),
                        text: "9",
                        function: () => controller.onDigitPress("9"),
                      ),
                      const SizedBox(
                        width: 22,
                      ),
                      ButtonCalculator(
                        colorText: const Color(0xFFFFFFFF),
                        colorShadow: const Color.fromRGBO(255, 255, 255, 0.25),
                        color: const Color(0xFFFFB906),
                        text: "x",
                        function: () => controller.onOperatorPress("*"),
                      ),
                      const SizedBox(width: 24),
                    ],
                  )
                : Row(
                    children: <Widget>[
                      const SizedBox(width: 13),
                      ButtonCalculator(
                        colorText: Colors.black,
                        color: const Color(0xFFFFFFFF),
                        colorShadow: const Color(0x3F000000),
                        text: "7",
                        function: () => controller.onDigitPress("7"),
                      ),
                      const SizedBox(width: 22),
                      ButtonCalculator(
                        colorText: Colors.black,
                        color: const Color(0xFFFFFFFF),
                        colorShadow: const Color(0x3F000000),
                        text: "8",
                        function: () => controller.onDigitPress("8"),
                      ),
                      const SizedBox(width: 22),
                      ButtonCalculator(
                        colorText: Colors.black,
                        color: const Color(0xFFFFFFFF),
                        colorShadow: const Color(0x3F000000),
                        text: "9",
                        function: () => controller.onDigitPress("9"),
                      ),
                      const SizedBox(
                        width: 22,
                      ),
                      ButtonCalculator(
                        colorText: Colors.black,
                        color: const Color(0xFFFFB906),
                        colorShadow: const Color(0x3F000000),
                        text: "x",
                        function: () => controller.onOperatorPress("*"),
                      ),
                      const SizedBox(width: 24),
                    ],
                  )),
            const SizedBox(height: 20),
            // Baris 3 !!!
            Obx(
              () => (controller.isValue.value)
                  ? Row(
                      children: <Widget>[
                        const SizedBox(width: 13),
                        ButtonCalculator(
                          colorText: const Color(0xFFFFFFFF),
                          color: const Color.fromRGBO(46, 47, 56, 1),
                          colorShadow:
                              const Color.fromRGBO(255, 255, 255, 0.25),
                          text: "4",
                          function: () => controller.onDigitPress("4"),
                        ),
                        const SizedBox(width: 22),
                        ButtonCalculator(
                          colorText: const Color(0xFFFFFFFF),
                          color: const Color.fromRGBO(46, 47, 56, 1),
                          colorShadow:
                              const Color.fromRGBO(255, 255, 255, 0.25),
                          text: "5",
                          function: () => controller.onDigitPress("5"),
                        ),
                        const SizedBox(width: 22),
                        ButtonCalculator(
                          colorText: const Color(0xFFFFFFFF),
                          color: const Color.fromRGBO(46, 47, 56, 1),
                          colorShadow:
                              const Color.fromRGBO(255, 255, 255, 0.25),
                          text: "6",
                          function: () => controller.onDigitPress("6"),
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        ButtonCalculator(
                          colorText: const Color(0xFFFFFFFF),
                          colorShadow:
                              const Color.fromRGBO(255, 255, 255, 0.25),
                          color: const Color(0xFFFFB906),
                          text: "-",
                          function: () => controller.onOperatorPress("-"),
                        ),
                        const SizedBox(width: 24),
                      ],
                    )
                  : Row(
                      children: <Widget>[
                        const SizedBox(width: 13),
                        ButtonCalculator(
                          colorText: Colors.black,
                          color: const Color(0xFFFFFFFF),
                          colorShadow: const Color(0x3F000000),
                          text: "4",
                          function: () => controller.onDigitPress("4"),
                        ),
                        const SizedBox(width: 22),
                        ButtonCalculator(
                          colorText: Colors.black,
                          color: const Color(0xFFFFFFFF),
                          colorShadow: const Color(0x3F000000),
                          text: "5",
                          function: () => controller.onDigitPress("5"),
                        ),
                        const SizedBox(width: 22),
                        ButtonCalculator(
                          colorText: Colors.black,
                          color: const Color(0xFFFFFFFF),
                          colorShadow: const Color(0x3F000000),
                          text: "6",
                          function: () => controller.onDigitPress("6"),
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        ButtonCalculator(
                          colorText: Colors.black,
                          color: const Color(0xFFFFB906),
                          colorShadow: const Color(0x3F000000),
                          text: "-",
                          function: () => controller.onOperatorPress("-"),
                        ),
                        const SizedBox(width: 24),
                      ],
                    ),
            ),
            const SizedBox(height: 20),
            // baris 4 !!!
            Obx(
              () => (controller.isValue.value)
                  ? Row(
                      children: <Widget>[
                        const SizedBox(width: 13),
                        ButtonCalculator(
                          colorText: const Color(0xFFFFFFFF),
                          color: const Color.fromRGBO(46, 47, 56, 1),
                          colorShadow:
                              const Color.fromRGBO(255, 255, 255, 0.25),
                          text: "1",
                          function: () => controller.onDigitPress("1"),
                        ),
                        const SizedBox(width: 22),
                        ButtonCalculator(
                          colorText: const Color(0xFFFFFFFF),
                          color: const Color.fromRGBO(46, 47, 56, 1),
                          colorShadow:
                              const Color.fromRGBO(255, 255, 255, 0.25),
                          text: "2",
                          function: () => controller.onDigitPress("2"),
                        ),
                        const SizedBox(width: 22),
                        ButtonCalculator(
                          colorText: const Color(0xFFFFFFFF),
                          color: const Color.fromRGBO(46, 47, 56, 1),
                          colorShadow:
                              const Color.fromRGBO(255, 255, 255, 0.25),
                          text: "3",
                          function: () => controller.onDigitPress("3"),
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        ButtonCalculator(
                          color: const Color(0xFFFFB906),
                          colorText: const Color(0xFFFFFFFF),
                          colorShadow:
                              const Color.fromRGBO(255, 255, 255, 0.25),
                          text: "+",
                          function: () => controller.onOperatorPress("+"),
                        ),
                        const SizedBox(width: 24),
                      ],
                    )
                  : Row(
                      children: <Widget>[
                        const SizedBox(width: 13),
                        ButtonCalculator(
                          colorText: Colors.black,
                          color: const Color(0xFFFFFFFF),
                          colorShadow: const Color(0x3F000000),
                          text: "1",
                          function: () => controller.onDigitPress("1"),
                        ),
                        const SizedBox(width: 22),
                        ButtonCalculator(
                          colorText: Colors.black,
                          color: const Color(0xFFFFFFFF),
                          colorShadow: const Color(0x3F000000),
                          text: "2",
                          function: () => controller.onDigitPress("2"),
                        ),
                        const SizedBox(width: 22),
                        ButtonCalculator(
                          colorText: Colors.black,
                          color: const Color(0xFFFFFFFF),
                          colorShadow: const Color(0x3F000000),
                          text: "3",
                          function: () => controller.onDigitPress("3"),
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        ButtonCalculator(
                          colorText: Colors.black,
                          color: const Color(0xFFFFB906),
                          colorShadow: const Color(0x3F000000),
                          text: "+",
                          function: () => controller.onOperatorPress("+"),
                        ),
                        const SizedBox(width: 24),
                      ],
                    ),
            ),
            const SizedBox(height: 20),
            // baris terakhir !!!
            Obx(() => (controller.isValue.value)
                ? Row(
                    children: <Widget>[
                      const SizedBox(width: 13),
                      ButtonCalculator(
                        colorText: const Color(0xFFFFFFFF),
                        color: const Color.fromRGBO(46, 47, 56, 1),
                        colorShadow: const Color.fromRGBO(255, 255, 255, 0.25),
                        text: ".",
                        function: () => controller.onDecimalPress(),
                      ),
                      const SizedBox(width: 22),
                      ButtonCalculator(
                        colorText: const Color(0xFFFFFFFF),
                        color: const Color.fromRGBO(46, 47, 56, 1),
                        colorShadow: const Color.fromRGBO(255, 255, 255, 0.25),
                        text: "0",
                        function: () => controller.onDigitPress("0"),
                      ),
                      const SizedBox(width: 22),
                      ButtonCalculator(
                        colorText: const Color(0xFFFFFFFF),
                        color: const Color.fromRGBO(46, 47, 56, 1),
                        colorShadow: const Color.fromRGBO(255, 255, 255, 0.25),
                        text: "del",
                        function: () => controller.onDeletePress(),
                      ),
                      const SizedBox(
                        width: 22,
                      ),
                      ButtonCalculator(
                        color: const Color(0xFFFFB906),
                        colorText: const Color(0xFFFFFFFF),
                        colorShadow: const Color.fromRGBO(255, 255, 255, 0.25),
                        text: "=",
                        function: () => controller.onEqualPress(),
                      ),
                      const SizedBox(width: 24),
                    ],
                  )
                : Row(
                    children: <Widget>[
                      const SizedBox(width: 13),
                      ButtonCalculator(
                        colorText: Colors.black,
                        color: const Color(0xFFFFFFFF),
                        colorShadow: const Color(0x3F000000),
                        text: ".",
                        function: () => controller.onDecimalPress(),
                      ),
                      const SizedBox(width: 22),
                      ButtonCalculator(
                        colorText: Colors.black,
                        color: const Color(0xFFFFFFFF),
                        colorShadow: const Color(0x3F000000),
                        text: "0",
                        function: () => controller.onDigitPress("0"),
                      ),
                      const SizedBox(width: 22),
                      ButtonCalculator(
                        colorText: Colors.black,
                        color: const Color(0xFFFFFFFF),
                        colorShadow: const Color(0x3F000000),
                        text: "del",
                        function: () => controller.onDeletePress(),
                      ),
                      const SizedBox(
                        width: 22,
                      ),
                      ButtonCalculator(
                        colorText: Colors.black,
                        color: const Color(0xFFFFB906),
                        colorShadow: const Color(0x3F000000),
                        text: "=",
                        function: () => controller.onEqualPress(),
                      ),
                      const SizedBox(width: 24),
                    ],
                  )),
          ],
        ),
      ),
    );
  }
}
