import 'package:cabu_cabu_user_mobile/src/core/components/custom_shapes/containers/rounded_container.dart';
import 'package:cabu_cabu_user_mobile/src/core/components/tiles/custom_divide_tiles.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/image_strings.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
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
                    const VehicleAndDriverImage(),
                    32.verticalSpace,
                    CustomDivideTiles(
                      dividerIndent: 42.w,
                      spacing: 3,
                      tiles: const [
                        RideDetailsListTile(
                          title: 'Car owner: John Doe',
                          icon: Icons.directions_car_outlined,
                        ),
                        RideDetailsListTile(
                          title: 'Number plate: ABC 123',
                          icon: Icons.three_k_outlined,
                        ),
                        RideDetailsListTile(
                          title: 'Color: Black',
                          icon: Icons.color_lens_outlined,
                        ),
                        RideDetailsListTile(
                          title: 'Seats: 4',
                          icon: Icons.event_seat_outlined,
                        ),
                        RideDetailsListTile(
                          title: 'Brand / Model: Toyota',
                          icon: Icons.car_rental,
                        ),
                        RideDetailsListTile(
                          title: 'Rating: 4.5',
                          icon: Icons.star_border_outlined,
                        ),
                        RideDetailsListTile(
                          title: 'Glass tinted: Yes',
                          icon: Icons.water_drop_outlined,
                        ),
                        RideDetailsListTile(
                          title: 'Drive Plan',
                          icon: Icons.directions_car_outlined,
                        ),
                        DestinationDetails(),
                      ],
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

class VehicleAndDriverImage extends StatelessWidget {
  const VehicleAndDriverImage({
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
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          right: 1,
          top: 1,
          child: AppRoundedContainer(
            radius: 10,
            showBorder: true,
            borderColor: AppColors.primary,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                AppImages.place2,
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

/// A widget to display destination details with customized rows.
class DestinationDetails extends StatelessWidget {
  const DestinationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const DestinationRow(
            startPoint: 'Ajah',
            endPoint: 'Osborne road',
            icon: Icons.radio_button_checked,
          ),
          Align(
            alignment: Alignment(0.65.w, 0),
            child: Icon(
              Icons.airplanemode_active,
              color: AppColors.black.withOpacity(0.7),
            ),
          ),
          const DestinationRow(
            startPoint: 'Ikeja',
            endPoint: 'Third mainland',
            icon: Icons.location_on_outlined,
          ),
        ],
      ),
    );
  }
}

/// A reusable widget that displays a destination row with a start point and end point.
class DestinationRow extends StatelessWidget {
  final String startPoint;
  final String endPoint;
  final IconData icon;

  const DestinationRow({
    super.key,
    required this.startPoint,
    required this.endPoint,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Row(
            children: [
              Icon(
                icon,
                color: AppColors.black.withOpacity(0.7),
              ),
              10.horizontalSpace,
              Text(
                startPoint,
                style: context.textTheme.titleSmall?.copyWith(
                  color: AppColors.black.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Icon(
            Icons.airplanemode_active,
            color: AppColors.black.withOpacity(0.7),
          ),
        ),
        Expanded(
          flex: 2,
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              endPoint,
              style: context.textTheme.titleSmall?.copyWith(
                color: AppColors.black.withOpacity(0.7),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class RideDetailsListTile extends StatelessWidget {
  final String title;
  final IconData icon;

  const RideDetailsListTile({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      titleTextStyle: context.textTheme.titleSmall?.copyWith(
        color: AppColors.black.withOpacity(0.7),
      ),
      leading: Icon(
        icon,
        size: 30,
        color: AppColors.black.withOpacity(0.7),
      ),
      visualDensity: VisualDensity.compact,
      contentPadding: EdgeInsets.zero,
      titleAlignment: ListTileTitleAlignment.bottom,
    );
  }
}
