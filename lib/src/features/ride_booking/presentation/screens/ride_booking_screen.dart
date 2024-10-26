import 'package:cabu_cabu_user_mobile/core/common/providers/user_provider.dart';
import 'package:cabu_cabu_user_mobile/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/bottom_sheet/destination_picker_panel.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/cards/ride_booking_home_cards.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class RideBookingScreen extends ConsumerStatefulWidget {
  const RideBookingScreen({super.key});

  @override
  ConsumerState<RideBookingScreen> createState() => _RideBookingScreenState();
}

class _RideBookingScreenState extends ConsumerState<RideBookingScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(currentUserProvider(FirebaseAuth.instance.currentUser!.uid));
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(currentUserProvider(FirebaseAuth.instance.currentUser!.uid),
        (prev, cur) {
      cur.whenOrNull(
        data: (state) {
          print('User: $state');
        },
        error: (e, s) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(e.toString()),
            ),
          );
        },
      );
    });

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
