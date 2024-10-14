import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/icon_strings.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/sizes.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class UpdateSuccessfulScreen extends StatelessWidget {
  final String text;
  final VoidCallback? onBtnPressed;

  const UpdateSuccessfulScreen(
      {super.key, required this.text, this.onBtnPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppTexts.phoneNumberChangedSuccess,
                textAlign: TextAlign.center,
                style: context.textTheme.headlineLarge?.copyWith(
                  fontSize: 20.sp,
                ),
              ),
              20.verticalSpace,
              SvgPicture.asset(
                AppIcons.success,
                width: 100.w,
              ),
              40.verticalSpace,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onBtnPressed,
                  child: Text(AppTexts.okay),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
