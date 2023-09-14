import 'package:get/get.dart';

import '../modules/home/bindings/calculator_binding.dart';
import '../modules/home/views/calculator_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const CalculatorView(),
      binding: CalculatorBinding(),
    ),
  ];
}
