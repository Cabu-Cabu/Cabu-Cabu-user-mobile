import 'package:cabu_cabu_user_mobile/src/core/components/custom_shapes/containers/rounded_container.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/image_strings.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/texts/ride_booking_header_texts.dart';
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
                  return AvailabeRideListTile(index: index);
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
  const AvailabeRideListTile({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Sandfill Bus Stop'),
      contentPadding: EdgeInsets.zero,
      minLeadingWidth: 60,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.asset(
          [
            AppImages.place1,
            AppImages.place2,
            AppImages.place3,
          ][index % 3],
          width: 63,
          height: 61,
          fit: BoxFit.fill,
        ),
      ),
      trailing: const AppRoundedContainer(
        width: 40,
        height: 40,
        showBorder: true,
        borderColor: AppColors.primary,
        child: Icon(
          Icons.arrow_forward_ios,
          size: 10,
          color: AppColors.primary,
        ),
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
