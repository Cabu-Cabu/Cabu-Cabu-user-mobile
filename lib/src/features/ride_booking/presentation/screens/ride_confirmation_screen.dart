import 'package:cabu_cabu_user_mobile/src/core/components/custom_shapes/containers/rounded_container.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/image_strings.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/lists/car_driver_details_list.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/texts/ride_booking_header_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RideConfirmationScreen extends StatelessWidget {
  const RideConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Confirm Ride'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RideBookingHeaderTexts(
              title: AppTexts.rideConfirmationHeaderTitle,
              subtitle: AppTexts.rideConfirmationHeaderSubtitle,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    8.verticalSpace,
                    const CarAndDriverImage(),
                    32.verticalSpace,
                    const CarDriverDetailsList(isDriverDetails: false),
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
            AppImages.place2,
            height: 0.25.sh,
            width: 1.sw,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 1,
          top: 1,
          child: AppRoundedContainer(
            radius: 10,
            showBorder: true,
            borderWidth: 1.5,
            borderColor: AppColors.primary,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                AppImages.person1,
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
