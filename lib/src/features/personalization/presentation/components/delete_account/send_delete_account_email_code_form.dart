import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendDeleteAccountEmailCode extends StatelessWidget {
  const SendDeleteAccountEmailCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppTexts.deleteAccountDescription,
          style: context.textTheme.headlineSmall,
        ),
        42.verticalSpace,
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(AppTexts.sendDeleteCode),
          ),
        ),
      ],
    );
  }
}
