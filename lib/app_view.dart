import 'package:cabu_cabu_user_mobile/src/features/authentication/presentation/screens/onborading.dart';
import 'package:cabu_cabu_user_mobile/src/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/utils/theme/theme.dart';
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
        darkTheme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        home: const OnboradingScreen(),
      ),
    );
  }
}
