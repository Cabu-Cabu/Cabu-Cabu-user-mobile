import 'package:flutter/material.dart';

class TCheckBoxTheme {
  TCheckBoxTheme._();

  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.blue;
      }
      return Colors.transparent;
    }),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.white;
      }
      return Colors.black;
    }),
    // side: const BorderSide(color: Colors.lightGreen, width: 2),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  );

  static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.blue;
      }
      return Colors.transparent;
    }),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.white;
      }
      return Colors.black;
    }),
    // side: const BorderSide(color: Colors.lightGreen, width: 2),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  );
}
