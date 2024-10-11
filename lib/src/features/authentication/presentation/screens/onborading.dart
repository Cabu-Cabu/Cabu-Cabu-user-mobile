import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/image_strings.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/sizes.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/authentication/presentation/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class OnboradingScreen extends StatelessWidget {
  const OnboradingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.all(AppSizes.defaultSpace).copyWith(
          bottom: AppSizes.xxl,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.onboardingImage),
            fit: BoxFit.cover,
          ),
        ),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => context.pushAndRemoveUntil(const WelcomeScreen()),
            child: const Text(AppTexts.getStarted),
          ),
        ),
      ),
    );
  }
}
