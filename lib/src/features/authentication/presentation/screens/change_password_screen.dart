import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/sizes.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/authentication/presentation/components/forgot_password_form.dart';
import 'package:cabu_cabu_user_mobile/src/features/authentication/presentation/components/password_verification_form.dart';
import 'package:cabu_cabu_user_mobile/src/features/authentication/presentation/components/reset_password_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.spaceBtwItems.w),
        child: Column(
          children: [
            Text(
              AppTexts.forgotPasswordTitle,
              style: context.textTheme.headlineLarge,
            ),
            38.verticalSpace,
            Expanded(
              child: PageView(
                children: const [
                  ForgotPasswordForm(),
                  PasswordVerificationForm(),
                  ResetPasswordForm(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
