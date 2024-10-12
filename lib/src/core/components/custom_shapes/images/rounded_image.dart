import 'package:cabu_cabu_user_mobile/src/core/components/custom_shapes/containers/rounded_container.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppRoundedImage extends StatelessWidget {
  final String image;
  final double height;
  final double width;
  final double radius;
  final bool showBorder;
  final Color borderColor;

  const AppRoundedImage({
    super.key,
    required this.image,
    required this.height,
    required this.width,
    this.radius = 10,
    this.showBorder = false,
    this.borderColor = AppColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return AppRoundedContainer(
      radius: radius,
      showBorder: showBorder,
      borderWidth: 1.5,
      borderColor: borderColor,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Image.asset(
          image,
          height: height,
          width: width,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
