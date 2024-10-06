import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:url_launcher/url_launcher_string.dart';

class AppDeviceUtils {
  static bool isMobile() {
    return Platform.isAndroid || Platform.isIOS;
  }

  static bool isAndroid() {
    return Platform.isAndroid;
  }

  static bool isIOS() {
    return Platform.isIOS;
  }

  static bool isWeb() {
    return Platform.isMacOS || Platform.isWindows || Platform.isLinux;
  }

  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  // static void openUrl(String url) async {
  //   if (await canLaunchUrlString(url)) {
  //     await launchUrlString(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  static Future<void> setStatusBarColor(Color color) async {
    if (Platform.isAndroid) {
      try {
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: color,
        ));
      } catch (e) {
        print(e);
      }
    }
  }

  static Future<void> setNavigationBarColor(Color color) async {
    if (Platform.isAndroid) {
      try {
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          systemNavigationBarColor: color,
        ));
      } catch (e) {
        print(e);
      }
    }
  }

  static bool isLandScapeOrientation(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  static bool isPortraitOrientation(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.shortestSide >= 600;
  }

  static bool isPhone(BuildContext context) {
    return MediaQuery.of(context).size.shortestSide < 600;
  }

  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersive : SystemUiMode.edgeToEdge);
  }

  static double getStatusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getScreenSafeAreaHeight(BuildContext context) {
    return getScreenHeight(context) -
        getStatusBarHeight(context) -
        getNavigationBarHeight(context);
  }

  static double getNavigationBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }

  static double getAppBarHeight() {
    return AppBar().preferredSize.height;
  }

  static double getBottomNavigationBarHeight(BuildContext context) {
    return kBottomNavigationBarHeight;
  }

  static double getKeyboardHeight(BuildContext context) {
    return MediaQuery.of(context).viewInsets.bottom;
  }

  static bool isKeyboardVisible(BuildContext context) {
    return getKeyboardHeight(context) > 0;
  }

  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  static Future<bool> isPhysicalDevice() async {
    return Platform.isAndroid || Platform.isIOS;
  }

  static void vibrate({Duration duration = const Duration(milliseconds: 500)}) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

  static Future<bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }
}
