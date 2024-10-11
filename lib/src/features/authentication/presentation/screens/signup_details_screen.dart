import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/sizes.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/authentication/presentation/components/signup/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupDetailsScreen extends StatelessWidget {
  const SignupDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.spaceBtwItems.w)
            .copyWith(top: AppSizes.spaceBtwItems.h),
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
            ],
          ),
        ),
      ),
    );
  }
}
