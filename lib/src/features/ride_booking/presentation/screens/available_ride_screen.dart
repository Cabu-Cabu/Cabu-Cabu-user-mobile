import 'package:cabu_cabu_user_mobile/src/core/components/buttons/rounded_icon_button.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/image_strings.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/texts/ride_booking_header_texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/screens/ride_confirmation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvailableRideScreen extends StatelessWidget {
  const AvailableRideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RideBookingHeaderTexts(
              title: AppTexts.availableRideHeaderTitle,
              subtitle: AppTexts.availableRideHeaderSubtitle,
            ),
            16.verticalSpace,

            // This is the list of available rides
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                separatorBuilder: (_, __) => Divider(
                  thickness: 1.0,
                  indent: 60.w,
                  height: 10.0,
                  color: AppColors.opacBlack,
                ),
                itemBuilder: (_, int index) {
                  return AvailabeRideListTile(
                    index: index,
                    onTap: () => context.push(RideConfirmationScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AvailabeRideListTile extends StatelessWidget {
  final int index;
  final VoidCallback onTap;
  const AvailabeRideListTile({
    super.key,
    required this.index,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Sandfill Bus Stop'),
      contentPadding: EdgeInsets.zero,
      minLeadingWidth: 60,
      isThreeLine: true,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.asset(
          [
            AppImages.car1,
            AppImages.car2,
            AppImages.car3,
            AppImages.car4,
            AppImages.car5,
            AppImages.car6,
            AppImages.car7,
            AppImages.car8,
            AppImages.car9,
          ][index % 9],
          width: 63,
          height: 61,
          fit: BoxFit.cover,
        ),
      ),
      trailing: AppRoundedIconButton(
        showBorder: true,
        iconColor: AppColors.primary,
        backgroundColor: AppColors.primary,
        onTap: onTap,
      ),
      subtitle: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('March 12, 2022'),
          4.verticalSpace,
          const Text('N2000'),
        ],
      ),
    );
  }
}
