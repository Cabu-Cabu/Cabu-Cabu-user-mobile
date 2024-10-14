import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteOrCancelAccountForm extends StatelessWidget {
  const DeleteOrCancelAccountForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        27.verticalSpace,
        Text(
          AppTexts.deleteOrCancelText,
          style: context.textTheme.headlineSmall,
        ),
        32.verticalSpace,
        SizedBox(
          width: double.infinity,
          // height: 60.h,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.error,
            ),
            child: const Text(AppTexts.deleteAccountBtn),
          ),
        ),
        40.verticalSpace,
        SizedBox(
          width: double.infinity,
          // height: 60.h,
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.opacBlack,
                side: BorderSide(color: AppColors.opacBlack)),
            child: const Text(AppTexts.cancel),
          ),
        ),
      ],
    );
  }
}
