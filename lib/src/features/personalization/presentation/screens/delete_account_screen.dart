import 'package:cabu_cabu_user_mobile/src/core/utils/constants/sizes.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/components/delete_account/delete_or_cancel_account_form.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/components/header_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteAccountScreen extends StatelessWidget {
  const DeleteAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding),
        child: Column(
          children: [
            PersonalizationScreenHeader(title: AppTexts.deleteAccountTitle),
            28.verticalSpace,
            // SendDeleteAccountEmailCode(),
            // VerifyEmailToDeleteAccountForm(),
            DeleteOrCancelAccountForm(),
          ],
        ),
      ),
    );
  }
}
