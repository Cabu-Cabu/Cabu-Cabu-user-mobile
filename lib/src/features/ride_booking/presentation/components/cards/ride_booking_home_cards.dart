import 'package:cabu_cabu_user_mobile/src/core/components/custom_shapes/containers/rounded_container.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RideBookingHomeCards extends StatelessWidget {
  const RideBookingHomeCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 152.h,
          child: Row(
            children: [
              const Expanded(
                child: HomeCard(
                  image: AppImages.home1,
                  title: 'Ride',
                  btnText: 'Location',
                ),
              ),
              12.horizontalSpace,
              const Expanded(
                child: HomeCard(
                  image: AppImages.home2,
                  title: 'Ride',
                  btnText: 'View',
                ),
              ),
            ],
          ),
        ),
        23.verticalSpace,
        SizedBox(
          height: 152.h,
          child: const HomeCard(
            image: AppImages.home3,
            title: 'View',
            btnText: 'Other riders',
          ),
        ),
      ],
    );
  }
}

class HomeCard extends StatelessWidget {
  final String image;
  final String title;
  final String btnText;

  const HomeCard({
    super.key,
    required this.image,
    required this.title,
    required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      margin: EdgeInsets.zero,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(child: Image.asset(image)),
            8.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: context.textTheme.titleSmall,
                ),
                AppRoundedContainer(
                  radius: 4,
                  constraints: BoxConstraints(
                    minWidth: 76.w,
                  ),
                  color: AppColors.buttonBlue,
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 1.h),
                  child: Text(
                    btnText,
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
