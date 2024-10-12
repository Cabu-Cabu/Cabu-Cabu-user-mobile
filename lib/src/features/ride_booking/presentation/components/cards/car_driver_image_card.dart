import 'package:cabu_cabu_user_mobile/src/core/components/custom_shapes/images/rounded_image.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarAndDriverImage extends StatelessWidget {
  const CarAndDriverImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20).copyWith(
            topLeft: const Radius.circular(0),
          ),
          child: Image.asset(
            AppImages.car1,
            height: 0.25.sh,
            width: 1.sw,
            fit: BoxFit.cover,
          ),
        ),
        const Positioned(
          right: 0,
          top: 0,
          child: AppRoundedImage(
            width: 60,
            height: 60,
            radius: 20,
            showBorder: true,
            image: AppImages.person1,
          ),
        ),
      ],
    );
  }
}
