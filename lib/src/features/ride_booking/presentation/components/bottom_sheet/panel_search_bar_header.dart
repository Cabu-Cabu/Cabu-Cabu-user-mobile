import 'package:cabu_cabu_user_mobile/src/core/components/custom_shapes/containers/rounded_container.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/icon_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PanelSearchBarHeader extends StatelessWidget {
  const PanelSearchBarHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppRoundedContainer(
      radius: 10,
      height: 56,
      showBorder: true,
      borderColor: AppColors.opacBlack,
      padding: const EdgeInsets.all(8).copyWith(left: 22.w),
      child: Row(
        children: [
          SvgPicture.asset(AppIcons.search),
          18.horizontalSpace,
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                isDense: true,
                hintText: 'Where to?',
                contentPadding: EdgeInsets.zero,
                hintStyle: context.textTheme.bodyMedium?.copyWith(
                  color: AppColors.darkGrey,
                ),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          4.horizontalSpace,
          ElevatedButton.icon(
            onPressed: () {},
            label: const Text('View'),
            icon: SvgPicture.asset(AppIcons.group),
            style: ElevatedButton.styleFrom(
              textStyle: context.textTheme.bodyMedium,
              foregroundColor: AppColors.black,
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
