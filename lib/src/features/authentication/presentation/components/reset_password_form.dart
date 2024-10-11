import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            hintText: AppTexts.newPassword,
            prefixIcon: Icon(Icons.lock_outline),
          ),
        ),
        20.verticalSpace,
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            hintText: AppTexts.reEnterPassword,
            prefixIcon: Icon(Icons.lock_outline),
          ),
        ),
        40.verticalSpace,
        SizedBox(
          width: double.infinity,
          // height: 60.h,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(AppTexts.confirm),
          ),
        ),
      ],
    );
  }
}
