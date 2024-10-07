import 'package:cabu_cabu_user_mobile/src/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SigninForm extends StatelessWidget {
  const SigninForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            hintText: AppTexts.email,
            prefixIcon: Icon(Icons.email_outlined),
          ),
        ),
        20.verticalSpace,
        TextFormField(
          decoration: const InputDecoration(
            hintText: AppTexts.password,
            prefixIcon: Icon(Icons.lock_outline),
          ),
        ),
        12.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
                8.horizontalSpace,
                Text(
                  AppTexts.remember,
                  style: context.textTheme.titleSmall?.copyWith(
                    fontSize: 15.sp,
                    color: context.isDarkMode ? null : AppColors.opacBlack,
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                AppTexts.forgotPassword,
                style: context.textTheme.titleSmall?.copyWith(
                  fontSize: 14.sp,
                  color: context.isDarkMode ? null : AppColors.primary,
                ),
              ),
            ),
          ],
        ),
        30.verticalSpace,
        SizedBox(
          width: double.infinity,
          // height: 60.h,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(AppTexts.login),
          ),
        ),
        10.verticalSpace,
      ],
    );
  }
}
