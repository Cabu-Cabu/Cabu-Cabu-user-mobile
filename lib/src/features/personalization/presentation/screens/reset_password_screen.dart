import 'package:cabu_cabu_user_mobile/src/core/utils/constants/sizes.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/components/header_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultPadding),
        child: Column(
          children: [
            const PersonalizationScreenHeader(title: AppTexts.resetPassword),
            28.verticalSpace,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: AppTexts.currentPassword,
                        prefixIcon: Icon(Icons.lock_outline),
                        suffixIcon: Icon(Icons.visibility_off),
                      ),
                    ),
                    20.verticalSpace,
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: AppTexts.newPassword,
                        prefixIcon: Icon(Icons.lock_outline),
                        suffixIcon: Icon(Icons.visibility_off),
                      ),
                    ),
                    20.verticalSpace,
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: AppTexts.reEnterPassword,
                        prefixIcon: Icon(Icons.lock_outline),
                        suffixIcon: Icon(Icons.visibility_off),
                      ),
                    ),
                    40.verticalSpace,
                    SizedBox(
                      width: double.infinity,
                      // height: 60.h,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(AppTexts.resetPassword),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
