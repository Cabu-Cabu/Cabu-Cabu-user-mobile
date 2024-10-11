import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/bottom_sheet/destination_picker_panel.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/cards/ride_booking_home_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class RideBookingScreen extends StatelessWidget {
  const RideBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SlidingUpPanel(
          minHeight: 110,
          maxHeight: 0.5.sh,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadow,
              blurRadius: 10.0,
              offset: const Offset(0, -2),
            ),
          ],
          panel: const DestinationPickerPanel(),
          body: const Padding(
            padding: EdgeInsets.all(16.0),
            child: RideBookingHomeCards(),
          ),
        ),
      ),
    );
  }
}
