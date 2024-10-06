import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  /// -- Light Theme --
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Montserrat',
    brightness: Brightness.light,
    primaryColor: Colors.lightGreen,
    // textTheme: TTextTheme.lightTextTheme,
    // chipTheme: TChipTheme.lightChipTheme,
    // scaffoldBackgroundColor: Colors.white,
    // appBarTheme: TAppBarTheme.lightAppBarTheme,
    // checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    // bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    // outlinedButtonTheme: TOutlinedButtonTheme.outlinedButtonTheme,
    // inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
    // elevatedButtonTheme: TElevatedButtonTheme.lightElevatedThemeData,
  );

  /// -- Dark Theme --
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Montserrat',
    brightness: Brightness.dark,
    primaryColor: Colors.lightGreen,
    // textTheme: TTextTheme.darkTextTheme,
    // chipTheme: TChipTheme.darkChipTheme,
    // scaffoldBackgroundColor: TColors.dark,
    // appBarTheme: TAppBarTheme.darkAppBarTheme,
    // checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    // bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    // outlinedButtonTheme: TOutlinedButtonTheme.outlinedButtonThemeDark,
    // inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme,
    // elevatedButtonTheme: TElevatedButtonTheme.darkElevatedThemeData,
  );
}
