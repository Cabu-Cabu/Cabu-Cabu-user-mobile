import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyEmailToDeleteAccountForm extends StatelessWidget {
  const VerifyEmailToDeleteAccountForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${AppTexts.emailToDelete}Markowoje@cabu-cabuE.com',
          style: context.textTheme.headlineSmall,
        ),
        27.verticalSpace,
        TextFormField(
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            hintText: AppTexts.verificationCode,
          ),
        ),
        62.verticalSpace,
        SizedBox(
          width: double.infinity,
          // height: 60.h,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(AppTexts.verify),
          ),
        ),
      ],
    );
  }
}
