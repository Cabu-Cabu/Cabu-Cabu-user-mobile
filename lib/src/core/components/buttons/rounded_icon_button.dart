import 'package:cabu_cabu_user_mobile/src/core/components/custom_shapes/containers/rounded_container.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppRoundedIconButton extends StatelessWidget {
  final bool showBorder;
  final Color backgroundColor;
  final Color iconColor;
  final VoidCallback? onTap;

  const AppRoundedIconButton({
    super.key,
    required this.showBorder,
    required this.backgroundColor,
    required this.iconColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppRoundedContainer(
      width: 40,
      height: 40,
      showBorder: true,
      borderWidth: 1.5,
      color: showBorder ? AppColors.white : backgroundColor,
      borderColor: backgroundColor,
      child: IconButton(
        icon: Icon(
          Icons.arrow_forward_ios,
          color: iconColor,
        ),
        iconSize: 10,
        onPressed: onTap,
      ),
    );
  }
}
