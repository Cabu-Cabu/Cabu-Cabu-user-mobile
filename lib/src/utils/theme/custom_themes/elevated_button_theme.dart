import 'package:cabu_cabu_user_mobile/src/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// -- Light & Dark Elevated Button Themes
class TElevatedButtonTheme {
  TElevatedButtonTheme._(); // To avoid creating instances

  /// -- Light Theme
  static ElevatedButtonThemeData lightElevatedThemeData =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: AppColors.primary,
      disabledForegroundColor: AppColors.grey,
      disabledBackgroundColor: AppColors.grey,
      side: const BorderSide(color: AppColors.primary),
      padding: const EdgeInsets.symmetric(vertical: 24),
      textStyle: const TextStyle(
          fontSize: 16, color: AppColors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );

  /// -- Light Theme
  static ElevatedButtonThemeData darkElevatedThemeData =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: AppColors.primary,
      disabledForegroundColor: AppColors.grey,
      disabledBackgroundColor: AppColors.grey,
      side: const BorderSide(color: AppColors.primary),
      padding: EdgeInsets.symmetric(vertical: 24.w),
      textStyle: TextStyle(
          fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.w)),
    ),
  );
}
