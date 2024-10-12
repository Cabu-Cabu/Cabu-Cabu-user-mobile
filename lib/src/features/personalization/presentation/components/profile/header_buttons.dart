import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/icon_strings.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProfileHeaderActionButtons extends StatelessWidget {
  const ProfileHeaderActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 126.h,
      child: Row(
        children: [
          const Expanded(
              child: ProfileHeaderButton(
            icon: AppIcons.payment,
            text: AppTexts.paymentMethod,
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(15),
            ),
          )),
          4.horizontalSpace,
          const Expanded(
              child: ProfileHeaderButton(
            icon: AppIcons.panic,
            text: AppTexts.panicBtn,
          )),
          4.horizontalSpace,
          const Expanded(
              child: ProfileHeaderButton(
            icon: AppIcons.help,
            text: AppTexts.help,
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(15),
            ),
          )),
        ],
      ),
    );
  }
}

class ProfileHeaderButton extends StatelessWidget {
  final String icon;
  final String text;
  final BorderRadius? borderRadius;

  const ProfileHeaderButton({
    super.key,
    required this.icon,
    required this.text,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: borderRadius,
      ),
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset(icon),
            ),
          ),
          Expanded(
            flex: 5,
            child: Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: context.textTheme.titleSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
