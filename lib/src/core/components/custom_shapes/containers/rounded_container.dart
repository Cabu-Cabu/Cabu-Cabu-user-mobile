import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppRoundedContainer extends StatelessWidget {
  final double? width, height;
  final bool showBorder;
  final double borderWidth;
  final Color color, borderColor;
  final EdgeInsetsGeometry? padding, margin;
  final BoxConstraints? constraints;
  final double radius;
  final Widget? child;

  const AppRoundedContainer({
    super.key,
    this.child,
    this.width,
    this.padding,
    this.height,
    this.radius = AppSizes.cardRadiusMd,
    this.color = AppColors.white,
    this.showBorder = false,
    this.borderWidth = 1.0,
    this.borderColor = AppColors.darkGrey,
    this.margin,
    this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      constraints: constraints,
      alignment: Alignment.center,
      padding: padding ?? EdgeInsets.zero,
      decoration: BoxDecoration(
        color: color,
        border: showBorder
            ? Border.all(color: borderColor, width: borderWidth)
            : null,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
