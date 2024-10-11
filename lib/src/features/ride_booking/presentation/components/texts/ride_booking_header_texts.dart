import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:flutter/material.dart';

class RideBookingHeaderTexts extends StatelessWidget {
  final String title;
  final String subtitle;

  const RideBookingHeaderTexts({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textTheme.headlineMedium,
        ),
        // 2.verticalSpace,
        Text(
          subtitle,
          style:
              context.textTheme.bodyLarge?.copyWith(color: AppColors.opacBlack),
        ),
      ],
    );
  }
}
