import 'package:cabu_cabu_user_mobile/src/core/components/custom_shapes/containers/rounded_container.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/icon_strings.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/sizes.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AppSearchContainer extends StatelessWidget {
  final String text;
  final String icon;
  final VoidCallback? onTap;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;

  const AppSearchContainer({
    super.key,
    this.text = AppTexts.search,
    this.icon = AppIcons.search,
    this.padding = const EdgeInsets.symmetric(horizontal: 0),
    this.showBackground = false,
    this.showBorder = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dark = context.isDarkMode;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: AppRoundedContainer(
          width: double.infinity,
          height: 48,
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.md,
          ),
          showBorder: showBorder,
          borderColor: AppColors.opacBlack,
          color: showBackground
              ? dark
                  ? AppColors.dark
                  : AppColors.white
              : Colors.transparent,
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                colorFilter: ColorFilter.mode(
                  dark ? AppColors.lightGrey : AppColors.opacBlack,
                  BlendMode.srcIn,
                ),
              ),
              AppSizes.spaceBtwItems.horizontalSpace,
              Text(
                text,
                style: context.textTheme.bodySmall?.copyWith(
                  color: dark ? AppColors.lightGrey : AppColors.opacBlack,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
