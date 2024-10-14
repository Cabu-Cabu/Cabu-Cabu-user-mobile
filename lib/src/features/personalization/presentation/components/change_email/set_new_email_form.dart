import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SetNewEmailForm extends StatelessWidget {
  const SetNewEmailForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            hintText: AppTexts.enterEmail,
            prefixIcon: Icon(Icons.email_outlined),
          ),
        ),
        20.verticalSpace,
        TextFormField(
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
              hintText: AppTexts.reEnterEmail,
              prefixIcon: Icon(Icons.email_outlined)),
        ),
        40.verticalSpace,
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
