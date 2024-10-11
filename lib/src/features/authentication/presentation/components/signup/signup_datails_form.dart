import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupDetailsForm extends StatelessWidget {
  const SignupDetailsForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            hintText: AppTexts.name,
            prefixIcon: Icon(Icons.person_outline),
          ),
        ),
        20.verticalSpace,
        TextFormField(
          decoration: const InputDecoration(
            hintText: AppTexts.location,
            prefixIcon: Icon(Icons.location_on_outlined),
          ),
        ),
        20.verticalSpace,
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            hintText: AppTexts.phoneNumber,
            prefixIcon: Icon(Icons.phone_outlined),
          ),
        ),
        // const Spacer(flex: 61),
        24.verticalSpace,
        SizedBox(
          width: double.infinity,
          // height: 60.h,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(AppTexts.finish),
          ),
        ),
        // const Spacer(flex: 167),
      ],
    );
  }
}
