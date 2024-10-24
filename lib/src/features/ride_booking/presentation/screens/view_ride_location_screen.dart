import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/image_strings.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/sizes.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/cards/ride_booking_home_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewRideLocationScreen extends StatelessWidget {
  const ViewRideLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTexts.viewRideLocation),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding),
            child: SizedBox(
              height: 152,
              width: double.infinity,
              child: HomeCard(
                image: AppImages.home1,
                title: 'Ride',
                btnText: 'Location',
              ),
            ),
          ),
          24.verticalSpace,
          Expanded(
            child: ColoredBox(color: AppColors.success.withOpacity(0.2)),
          ),
        ],
      ),
    );
  }
}
