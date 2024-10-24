import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/cards/car_driver_image_card.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/lists/car_driver_details_list.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/texts/ride_booking_header_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewBookedRideInfoScreen extends StatelessWidget {
  const ViewBookedRideInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                    const CarAndDriverImage(),
                    32.verticalSpace,
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
