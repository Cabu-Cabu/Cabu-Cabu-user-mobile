import 'package:cabu_cabu_user_mobile/src/core/components/custom_shapes/images/rounded_image.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/image_strings.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/cards/past_location_card.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/texts/ride_booking_header_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PastActivityRideDetailsScreen extends StatelessWidget {
  const PastActivityRideDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RideBookingHeaderTexts(
              title: AppTexts.bookedRideInfoTitle,
              subtitle: AppTexts.bookedRideInfoSubtitle,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    8.verticalSpace,
                    PastLocationCard(),
                    32.verticalSpace,
                    ListTile(
                      title: const Text('Mark'),
                      contentPadding: EdgeInsets.zero,
                      minLeadingWidth: 60,
                      isThreeLine: true,
                      leading: AppRoundedImage(
                          image: AppImages.car3, height: 61, width: 63),
                      trailing: AppRoundedImage.square(
                          image: AppImages.person3, size: 40),
                      subtitle: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('N 1000'),
                          4.verticalSpace,
                          const Text('4.5'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
