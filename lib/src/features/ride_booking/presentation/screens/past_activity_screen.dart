import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/cards/past_location_card.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/texts/ride_booking_header_texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/screens/available_ride_screen.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/screens/past_activity_ride_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PastActivityScreen extends StatelessWidget {
  const PastActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RideBookingHeaderTexts(
              title: AppTexts.pastActivityTitle,
              subtitle: AppTexts.pastActivitySubtitle,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    8.verticalSpace,
                    PastLocationCard(),
                    32.verticalSpace,
                    ListView.separated(
                      itemCount: 10,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (_, __) => Divider(
                        thickness: 1.0,
                        indent: 60.w,
                        height: 10.0,
                        color: AppColors.opacBlack,
                      ),
                      itemBuilder: (_, int index) {
                        return AvailabeRideListTile(
                          index: index,
                          onTap: () =>
                              context.push(PastActivityRideDetailsScreen()),
                        );
                      },
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
