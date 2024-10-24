import 'package:cabu_cabu_user_mobile/src/core/components/custom_shapes/images/rounded_image.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/image_strings.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/sizes.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/cards/ride_booking_home_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewOtherRidersScreen extends StatelessWidget {
  const ViewOtherRidersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTexts.viewRideLocation),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding),
        child: Column(
          children: [
            24.verticalSpace,
            SizedBox(
              height: 152.h,
              width: double.infinity,
              child: const HomeCard(
                image: AppImages.home3,
                title: 'View',
                btnText: 'Other riders',
              ),
            ),
            24.verticalSpace,
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (_, __) => Divider(
                  thickness: 1.0,
                  height: 6.0,
                  color: AppColors.opacBlack,
                ),
                itemBuilder: (_, int index) {
                  return ListTile(
                    title: const Text('Marina'),
                    contentPadding: EdgeInsets.zero,
                    minLeadingWidth: 50,
                    leading: AppRoundedImage.square(
                      image: AppImages.place2,
                      size: 40,
                    ),
                    trailing: AppRoundedImage.square(
                      image: AppImages.person2,
                      size: 40,
                    ),
                    subtitle: Text('Onikan'),
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
