import 'package:cabu_cabu_user_mobile/src/features/authentication/presentation/screens/login_screen.dart';
import 'package:cabu_cabu_user_mobile/src/features/authentication/presentation/screens/signup_screen.dart';
import 'package:cabu_cabu_user_mobile/src/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/utils/constants/image_strings.dart';
import 'package:cabu_cabu_user_mobile/src/utils/constants/sizes.dart';
import 'package:cabu_cabu_user_mobile/src/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(AppSizes.defaultSpace).copyWith(
          bottom: AppSizes.xl,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.onboardingImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => context.push(const SigninScreen()),
                child: const Text(AppTexts.login),
              ),
            ),
            32.verticalSpace,
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => context.push(const SignupScreen()),
                style: context.outlinedButtonTheme.style?.copyWith(
                  side: WidgetStateProperty.all(
                    const BorderSide(
                      color: AppColors.primary,
                    ),
                  ),
                  foregroundColor: WidgetStateProperty.all(
                    AppColors.primary,
                  ),
                  textStyle: WidgetStateProperty.all(
                    TextStyle(fontSize: 16.sp),
                  ),
                ),
                child: const Text(AppTexts.signup),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
