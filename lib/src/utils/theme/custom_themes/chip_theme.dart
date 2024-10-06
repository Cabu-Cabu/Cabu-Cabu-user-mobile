import 'package:cabu_cabu_user_mobile/src/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TChipTheme {
  TChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    // backgroundColor: Colors.grey[200],
    disabledColor: AppColors.grey.withOpacity(0.4),
    selectedColor: AppColors.primary,
    padding: const EdgeInsets.all(12.0),
    checkmarkColor: AppColors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    labelStyle: const TextStyle(
      color: AppColors.dark,
      fontSize: 14.0,
    ),
    secondaryLabelStyle: const TextStyle(
      color: AppColors.dark,
      fontSize: 14.0,
    ),
    brightness: Brightness.light,
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    // backgroundColor: Colors.grey[800],
    disabledColor: AppColors.darkerGrey,
    selectedColor: AppColors.primary,
    padding: const EdgeInsets.all(12.0),
    checkmarkColor: AppColors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    labelStyle: const TextStyle(
      color: AppColors.white,
      fontSize: 14.0,
    ),
    secondaryLabelStyle: const TextStyle(
      color: AppColors.white,
      fontSize: 14.0,
    ),
    brightness: Brightness.dark,
  );
}
