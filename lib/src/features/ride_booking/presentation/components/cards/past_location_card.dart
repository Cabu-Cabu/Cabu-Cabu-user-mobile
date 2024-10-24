import 'package:cabu_cabu_user_mobile/src/core/components/custom_shapes/containers/rounded_container.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PastLocationCard extends StatelessWidget {
  const PastLocationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10).copyWith(
            topLeft: const Radius.circular(0),
          ),
          child: Image.asset(
            AppImages.place3,
            height: 0.25.sh,
            width: 1.sw,
            fit: BoxFit.cover,
          ),
        ),
        const Positioned(
          left: 16,
          bottom: 10,
          child: AppRoundedContainer(
            width: 88,
            height: 21,
            radius: 4,
            color: AppColors.primary,
            child: Text('Ikoyi'),
          ),
        ),
      ],
    );
  }
}
