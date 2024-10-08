import 'package:cabu_cabu_user_mobile/src/features/authentication/presentation/components/auth_action_text.dart';
import 'package:cabu_cabu_user_mobile/src/features/authentication/presentation/components/form_divider.dart';
import 'package:cabu_cabu_user_mobile/src/features/authentication/presentation/components/google_social_button.dart';
import 'package:cabu_cabu_user_mobile/src/features/authentication/presentation/components/signup/signup_form.dart';
import 'package:cabu_cabu_user_mobile/src/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  AppTexts.signupTitle,
                  style: context.textTheme.headlineLarge,
                ),
                12.verticalSpace,
                Text(
                  AppTexts.signupSubTitle,
                  style: context.textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
                28.verticalSpace,
                const SignupForm(),
                const FormDivider(),
                24.verticalSpace,
                const GoogleSocialButton(),
                12.verticalSpace,
                AuthActionText(
                  text: AppTexts.alreadyHaveAccount,
                  actionText: AppTexts.signin,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
