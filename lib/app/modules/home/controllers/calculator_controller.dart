import 'package:get/get.dart';

class CalculatorController extends GetxController {
  RxBool isValue = Get.isDarkMode.obs;

  var displayValue = '0'.obs;
  var inputValue = '0'.obs;
  var firstValue = 0.0.obs;
  var secondValue = 0.0.obs;
  var operator = ''.obs;
  var isEqualClicked = false.obs;
  var isOperatorClicked = false.obs;
  var resultValue = '0'.obs;

  void onDigitPress(String digit) {
    if (isEqualClicked.value) {
      clearAll();
    }

    if (displayValue.value == '0' || isOperatorClicked.value) {
      displayValue.value = digit;
      isOperatorClicked.value = false;
    } else {
      displayValue.value += digit;
    }

    inputValue.value = displayValue.value;
  }

  void onOperatorPress(String op) {
    if (!isEqualClicked.value) {
      if (operator.value.isNotEmpty) {
        isEqualClicked.value = true;
        calculate();
        operator.value = '';
        firstValue.value = double.parse(inputValue.value);
        isOperatorClicked.value = true;
      } else {
        firstValue.value = double.parse(inputValue.value);
        operator.value = op;
        isOperatorClicked.value = true;
      }
    }
  }

  void onEqualPress() {
    if (operator.value.isNotEmpty) {
      isEqualClicked.value = true;
      calculate();
      operator.value = '';
      isOperatorClicked.value = true;
      resultValue.value = inputValue.value; // Perbarui hasil perhitungan
    }
  }

  void onClearPress() {
    clearAll();
  }

  void clearAll() {
    displayValue.value = '0';
    inputValue.value = '0';
    firstValue.value = 0.0;
    secondValue.value = 0.0;
    operator.value = '';
    isEqualClicked.value = false;
    isOperatorClicked.value = false;
    resultValue.value = '0';
  }

  void calculate() {
    secondValue.value = double.parse(inputValue.value);
    switch (operator.value) {
      case '+':
        inputValue.value = (firstValue.value + secondValue.value).toString();
        break;
      case '-':
        inputValue.value = (firstValue.value - secondValue.value).toString();
        break;
      case '*':
        inputValue.value = (firstValue.value * secondValue.value).toString();
        break;
      case '/':
        if (secondValue.value != 0) {
          inputValue.value = (firstValue.value / secondValue.value).toString();
        } else {
          inputValue.value = 'Error';
        }
        break;
    }
  }

  void onPlusMinusPress() {
    if (!isEqualClicked.value && !isOperatorClicked.value) {
      if (displayValue.value.startsWith('-')) {
        displayValue.value = displayValue.value.substring(1);
      } else {
        displayValue.value = '-${displayValue.value}';
      }
      inputValue.value = displayValue.value;
    }
  }

  void onPercentPress() {
    if (!isEqualClicked.value && !isOperatorClicked.value) {
      double value = double.parse(displayValue.value);
      value /= 100;
      displayValue.value = value.toString();
      inputValue.value = displayValue.value;
    }
  }

  void onDecimalPress() {
    if (isEqualClicked.value) {
      clearAll();
    }

    if (!displayValue.value.contains('.')) {
      displayValue.value += '.';
    }

    inputValue.value = displayValue.value;
  }

  void onDeletePress() {
    if (!isEqualClicked.value) {
      String currentValue = displayValue.value;
      if (currentValue.length > 1) {
        // Hapus satu angka dari belakang
        displayValue.value = currentValue.substring(0, currentValue.length - 1);
      } else {
        // Jika hanya ada satu angka, reset menjadi '0'
        displayValue.value = '0';
      }
      inputValue.value = displayValue.value;
    }
  }
}
