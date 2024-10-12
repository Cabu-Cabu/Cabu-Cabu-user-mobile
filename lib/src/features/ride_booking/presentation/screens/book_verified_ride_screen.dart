import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/icon_strings.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/cards/car_driver_image_card.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/texts/ride_booking_header_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BookVerifiedRideScreen extends StatelessWidget {
  const BookVerifiedRideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Book Ride'),
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
            8.verticalSpace,
            Expanded(
              child: Column(
                children: [
                  const CarAndDriverImage(),
                  32.verticalSpace,
                  const MessageAndCallButtons(),
                  16.verticalSpace,
                  Expanded(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.payments_outlined,
                            size: 100,
                            color: AppColors.black70,
                          ),
                          Text(
                            'Fee: N1000',
                            style: context.textTheme.headlineLarge?.copyWith(
                              fontWeight: FontWeight.normal,
                              color: AppColors.black70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageAndCallButtons extends StatelessWidget {
  const MessageAndCallButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton.icon(
              onPressed: () {},
              label: const Text('Message'),
              icon: SvgPicture.asset(AppIcons.message),
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: const Size(0, 45),
                foregroundColor: AppColors.primary,
                side: const BorderSide(
                  color: AppColors.primary,
                  width: 1.5,
                ),
              ),
            ),
          ),
          16.horizontalSpace,
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {},
              label: const Text('Call'),
              icon: SvgPicture.asset(AppIcons.call),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(0, 45),
                padding: EdgeInsets.zero,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
