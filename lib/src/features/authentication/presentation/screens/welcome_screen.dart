import 'package:cabu_cabu_user_mobile/src/features/authentication/presentation/screens/login_screen.dart';
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
      body: SafeArea(
        child: Container(
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
                  onPressed: () {},
                  child: const Text(AppTexts.login),
                ),
              ),
              32.verticalSpace,
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => context.push(const LoginScreen()),
                  style: context.outlinedButtonTheme.style?.copyWith(
                    textStyle: WidgetStateProperty.all(
                      TextStyle(
                        color: context.colorScheme.onSurface,
                      ),
                    ),
                  ),
                  child: const Text(AppTexts.signup),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
