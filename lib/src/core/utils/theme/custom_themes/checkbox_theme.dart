import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppCheckBoxTheme {
  AppCheckBoxTheme._();

  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.primary;
      }
      return Colors.transparent;
    }),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.primary;
      }
      return AppColors.primary;
    }),
    // side: const BorderSide(color: Colors.lightGreen, width: 2),
    shape: const CircleBorder(),
    visualDensity: VisualDensity.compact,
  );

  static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.primary;
      }
      return Colors.transparent;
    }),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.primary;
      }
      return AppColors.primary;
    }),
    // side: const BorderSide(color: Colors.lightGreen, width: 2),
    shape: const CircleBorder(),
    visualDensity: VisualDensity.compact,
  );
}
