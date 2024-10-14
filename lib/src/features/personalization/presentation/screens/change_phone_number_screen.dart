import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/sizes.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/components/header_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePhoneNumberScreen extends StatelessWidget {
  const ChangePhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultPadding),
        child: Column(
          children: [
            const PersonalizationScreenHeader(
              title: AppTexts.changeNumberTitle,
            ),
            28.verticalSpace,
            // VerifyPhoneNumberForm(),
            SetNewPhoneNumberForm(),
          ],
        ),
      ),
    );
  }
}

class VerifyPhoneNumberForm extends StatelessWidget {
  const VerifyPhoneNumberForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 70,
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: AppTexts.testCountryCode,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 20.h,
                    ),
                  ),
                ),
              ),
              3.horizontalSpace,
              Expanded(
                flex: 3,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: AppTexts.testPhoneNumber,
                  ),
                ),
              ),
              3.horizontalSpace,
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.w,
                    vertical: 8.h,
                  ),
                ),
                child: Text(
                  AppTexts.sendCode,
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: AppColors.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
        20.verticalSpace,
        TextFormField(
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            hintText: AppTexts.verificationCode,
          ),
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

class SetNewPhoneNumberForm extends StatelessWidget {
  const SetNewPhoneNumberForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 70,
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: AppTexts.testCountryCode,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 20.h,
                    ),
                  ),
                ),
              ),
              6.horizontalSpace,
              Expanded(
                flex: 4,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: AppTexts.testPhoneNumber,
                  ),
                ),
              ),
            ],
          ),
        ),
        20.verticalSpace,
        TextFormField(
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            hintText: AppTexts.reEnterPhoneNumber,
          ),
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
