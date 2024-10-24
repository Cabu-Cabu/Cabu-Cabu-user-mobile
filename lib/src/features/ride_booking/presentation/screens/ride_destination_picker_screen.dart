import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/screens/available_ride_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// This is the main screen for picking a ride destination in the Cabu Cabu app.
class RideDestinationPickerScreen extends StatelessWidget {
  const RideDestinationPickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _LocationInputSection(),
            _BottomButtons(),
          ],
        ),
      ),
    );
  }
}

/// A widget that displays the location input fields for the ride.
class _LocationInputSection extends StatelessWidget {
  const _LocationInputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.h,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const _LocationIcons(),
          35.horizontalSpace,
          const Expanded(child: _LocationTextFields()),
        ],
      ),
    );
  }
}

/// A widget that displays the input text fields for origin and destination.
class _LocationTextFields extends StatelessWidget {
  const _LocationTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: InputDecoration(
            isDense: true,
            hintText: 'Lekki Bus Stop',
            contentPadding: EdgeInsets.symmetric(
              vertical: 18.h,
              horizontal: 18.w,
            ),
          ),
        ),
        12.verticalSpace,
        TextField(
          decoration: InputDecoration(
            isDense: true,
            hintText: 'Your destination',
            contentPadding: EdgeInsets.symmetric(
              vertical: 18.h,
              horizontal: 18.w,
            ),
          ),
        ),
      ],
    );
  }
}

/// A widget that displays location-related icons vertically.
class _LocationIcons extends StatelessWidget {
  const _LocationIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Spacer(flex: 2),
        Icon(Icons.circle),
        Spacer(),
        Icon(Icons.keyboard_arrow_down),
        Icon(Icons.keyboard_arrow_down),
        Spacer(),
        Icon(Icons.location_on_outlined),
        Spacer(flex: 3),
      ],
    );
  }
}

/// A widget that displays the bottom buttons (Proceed and Cancel) with their respective styling.
class _BottomButtons extends StatelessWidget {
  const _BottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            color: Colors.grey[200],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Spacer(),
                Expanded(
                  flex: 5,
                  child: ElevatedButton(
                    onPressed: () => context.push(AvailableRideScreen()),
                    child: const Text('Proceed'),
                  ),
                ),
                const Spacer(),
                Expanded(
                  flex: 5,
                  child: OutlinedButton(
                    onPressed: () => context.pop(),
                    style: context.outlinedButtonTheme.style?.copyWith(
                      side: WidgetStateProperty.all(
                        const BorderSide(
                          color: AppColors.primary,
                        ),
                      ),
                      foregroundColor: WidgetStateProperty.all(
                        AppColors.primary,
                      ),
                      textStyle: WidgetStateProperty.all(
                        TextStyle(fontSize: 16.sp),
                      ),
                    ),
                    child: const Text('Cancel'),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
