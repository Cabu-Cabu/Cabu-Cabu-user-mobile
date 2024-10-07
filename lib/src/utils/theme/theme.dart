import 'package:cabu_cabu_user_mobile/src/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/utils/theme/custom_themes/appbar_theme.dart';
import 'package:cabu_cabu_user_mobile/src/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:cabu_cabu_user_mobile/src/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:cabu_cabu_user_mobile/src/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:cabu_cabu_user_mobile/src/utils/theme/custom_themes/text_field_theme.dart';
import 'package:cabu_cabu_user_mobile/src/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  /// -- Light Theme --
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Montserrat',
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    textTheme: AppTextTheme.lightTextTheme,
    // chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AAppBarTheme.lightAppBarTheme,
    checkboxTheme: AppCheckBoxTheme.lightCheckBoxTheme,
    // bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.outlinedButtonTheme,
    inputDecorationTheme: AppTextFieldTheme.lightInputDecorationTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedThemeData,
  );

  /// -- Dark Theme --
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Montserrat',
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    textTheme: AppTextTheme.darkTextTheme,
    // chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: AppColors.dark,
    appBarTheme: AAppBarTheme.darkAppBarTheme,
    checkboxTheme: AppCheckBoxTheme.darkCheckBoxTheme,
    // bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.outlinedButtonThemeDark,
    inputDecorationTheme: AppTextFieldTheme.darkInputDecorationTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedThemeData,
  );
}
