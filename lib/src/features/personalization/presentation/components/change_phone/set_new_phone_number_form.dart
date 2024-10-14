import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
