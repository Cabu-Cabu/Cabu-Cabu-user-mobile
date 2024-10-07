import 'package:cabu_cabu_user_mobile/src/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:cabu_cabu_user_mobile/src/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  /// -- Light Theme --
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Montserrat',
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    // textTheme: TTextTheme.lightTextTheme,
    // chipTheme: TChipTheme.lightChipTheme,
    // scaffoldBackgroundColor: Colors.white,
    // appBarTheme: TAppBarTheme.lightAppBarTheme,
    // checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    // bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.outlinedButtonTheme,
    // inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedThemeData,
  );

  /// -- Dark Theme --
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Montserrat',
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    // textTheme: TTextTheme.darkTextTheme,
    // chipTheme: TChipTheme.darkChipTheme,
    // scaffoldBackgroundColor: TColors.dark,
    // appBarTheme: TAppBarTheme.darkAppBarTheme,
    // checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    // bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.outlinedButtonThemeDark,
    // inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedThemeData,
  );
}
