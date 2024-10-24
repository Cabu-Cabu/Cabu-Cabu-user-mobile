import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/cards/car_driver_image_card.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/screens/bottom_nav_bar/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RideBookedSuccessfulScreen extends StatelessWidget {
  const RideBookedSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const CarAndDriverImage(showDriverImage: false),
              const Spacer(),
              Icon(Icons.check_circle, color: Colors.green, size: 100.r),
              10.verticalSpace,
              Text(
                'Ride Booked Successfully',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(flex: 2),
              SizedBox(
                width: 1.sw,
                child: ElevatedButton(
                  onPressed: () => context.push(DashboardScreen()),
                  // child: const Text('Track Ride'),
                  child: const Text('Okay'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
