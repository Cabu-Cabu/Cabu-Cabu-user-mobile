import 'package:cabu_cabu_user_mobile/src/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/utils/constants/extentions.dart';
import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Flexible(
          child: Divider(
            indent: 5,
            endIndent: 15,
          ),
        ),
        Text(
          'Or',
          style: context.textTheme.headlineSmall?.copyWith(
            color: AppColors.opacBlack,
          ),
        ),
        const Flexible(
          child: Divider(
            indent: 15,
            endIndent: 5,
          ),
        ),
      ],
    );
  }
}
