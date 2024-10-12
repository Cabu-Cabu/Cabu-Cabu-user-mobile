import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/theme/theme.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/bottom_sheet/driver_info_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, __) => MaterialApp(
        title: AppTexts.appName,
        theme: AppTheme.lightTheme,
        // darkTheme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        home: const DriverInfoSheet(),
      ),
    );
  }
}
