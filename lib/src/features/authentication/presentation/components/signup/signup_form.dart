import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/authentication/presentation/components/signup/terms_conditions_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            hintText: AppTexts.email,
            prefixIcon: Icon(Icons.email_outlined),
          ),
        ),
        20.verticalSpace,
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            hintText: AppTexts.password,
            prefixIcon: Icon(Icons.lock_outline),
          ),
        ),
        20.verticalSpace,
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            hintText: AppTexts.confirmPassword,
            prefixIcon: Icon(Icons.lock_outline),
          ),
        ),
        16.verticalSpace,
        const AppTermsAndConditionsCheckBox(),
        30.verticalSpace,
        SizedBox(
          width: double.infinity,
          // height: 60.h,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(AppTexts.signup),
          ),
        ),
        10.verticalSpace,
      ],
    );
  }
}
