import 'package:cabu_cabu_user_mobile/src/core/components/custom_shapes/images/rounded_image.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/image_strings.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/lists/car_driver_details_list.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/texts/ride_booking_header_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DriverInfoSheet extends StatelessWidget {
  const DriverInfoSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => context.pop(),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RideBookingHeaderTexts(
              title: AppTexts.driverDetailsHeaderTitle,
              subtitle: AppTexts.driverDetailsHeaderSubtitle,
            ),
            8.verticalSpace,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AppRoundedImage(
                      height: 200.h,
                      width: 250.w,
                      radius: 10,
                      image: AppImages.person2,
                    ),
                    16.verticalSpace,

                    // This is the list of driver details
                    const CarDriverDetailsList(isDriverDetails: true),
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
