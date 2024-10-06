// import 'package:intl/intl.dart';

class TFormatter {
  static String formatCurrency2(double value) {
    return '\$${value.toStringAsFixed(2)}';
  }

  static String formatPhoneNumber(String value) {
    return '${value.substring(0, 4)} ${value.substring(4, 7)} ${value.substring(7)}';
  }

  static String formatCardNumber(String value) {
    return '${value.substring(0, 4)} ${value.substring(4, 8)} ${value.substring(8, 12)} ${value.substring(12)}';
  }

  // static String formatDate(DateTime date) {
  //   return DateFormat('dd-MM-yyyy').format(date);
  // }

  // static String formatTime(DateTime date) {
  //   return DateFormat('HH:mm').format(date);
  // }

  // static String formatCurrency(double amount) {
  //   return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  // }
}
