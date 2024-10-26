import 'package:cabu_cabu_user_mobile/core/utils/constants/sizes.dart';
import 'package:cabu_cabu_user_mobile/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/components/change_phone/set_new_phone_number_form.dart';
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
