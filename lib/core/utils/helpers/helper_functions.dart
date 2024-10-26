import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

class THelperFunctions {
  THelperFunctions._();

  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  static void showAlertDialog(
      BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop,
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  // static String getFormattedDate(DateTime date,
  //     {String format = 'dd MMM yyyy'}) {
  //   return DateFormat();
  // }

  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  static Color? getColor(String value) => switch (value) {
        'Green' => Colors.green,
        'Red' => Colors.red,
        'Blue' => Colors.blue,
        'Pink' => Colors.pink,
        'Black' => Colors.black,
        'Yellow' => Colors.yellow,
        'Orange' => Colors.orange,
        'Purple' => Colors.purple,
        'White' => Colors.white,
        'Grey' => Colors.grey,
        'Brown' => Colors.brown,
        'Cyan' => Colors.cyan,
        'Teal' => Colors.teal,
        'Amber' => Colors.amber,
        'Lime' => Colors.lime,
        _ => null,
      };
}
