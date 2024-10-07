import 'package:cabu_cabu_user_mobile/src/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/utils/constants/icon_strings.dart';
import 'package:cabu_cabu_user_mobile/src/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoogleSocialButton extends StatelessWidget {
  const GoogleSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: () {},
        icon: SvgPicture.asset(
          AppIcons.googleLogo,
          width: 20.w,
          height: 20.h,
        ),
        label: const Text(AppTexts.continueWithGoogle),
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: AppColors.opacBlack),
          textStyle: context.textTheme.titleSmall?.copyWith(
            fontSize: 15.sp,
          ),
        ),
      ),
    );
  }
}
