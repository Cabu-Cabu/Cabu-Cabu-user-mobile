import 'package:cabu_cabu_user_mobile/src/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/utils/constants/sizes.dart';
import 'package:cabu_cabu_user_mobile/src/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTermsAndConditionsCheckBox extends StatelessWidget {
  const AppTermsAndConditionsCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = context.isDarkMode;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        AppSizes.spaceBtwItems.horizontalSpace,
        Expanded(
          child: Text.rich(
            maxLines: 2,
            TextSpan(
              children: [
                TextSpan(
                  text: '${AppTexts.iAgreeTo} ',
                  style: context.textTheme.labelMedium?.copyWith(
                    color: AppColors.black,
                  ),
                ),
                TextSpan(
                  text: '${AppTexts.termsOfServices} ',
                  style: context.textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: dark ? AppColors.white : AppColors.black,
                  ),
                ),
                TextSpan(
                  text: '${AppTexts.and} ',
                  style: context.textTheme.labelSmall,
                ),
                TextSpan(
                  text: AppTexts.privacyPolicy,
                  style: context.textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: dark ? AppColors.white : AppColors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
