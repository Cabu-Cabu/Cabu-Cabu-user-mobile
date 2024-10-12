import 'package:cabu_cabu_user_mobile/src/core/components/custom_shapes/images/rounded_image.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class PersonalizationScreenHeader extends StatelessWidget {
  final String title;
  final String? subtitle;

  const PersonalizationScreenHeader({
    super.key,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: context.textTheme.headlineMedium,
            ),
            if (subtitle != null)
              Text(
                subtitle!,
                style: context.textTheme.bodyLarge?.copyWith(
                  color: AppColors.opacBlack,
                ),
              ),
          ],
        ),
        const AppRoundedImage(
          image: AppImages.person2,
          height: 50,
          width: 50,
        ),
      ],
    );
  }
}
