import 'package:cabu_cabu_user_mobile/src/features/authentication/presentation/components/form_divider.dart';
import 'package:cabu_cabu_user_mobile/src/features/authentication/presentation/components/google_social_button.dart';
import 'package:cabu_cabu_user_mobile/src/features/authentication/presentation/components/signin_form.dart';
import 'package:cabu_cabu_user_mobile/src/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                AppTexts.loginTitle,
                style: context.textTheme.headlineLarge,
              ),
              12.verticalSpace,
              Text(
                AppTexts.loginSubTitle,
                style: context.textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              28.verticalSpace,
              const SigninForm(),
              const FormDivider(),
              24.verticalSpace,
              const GoogleSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
