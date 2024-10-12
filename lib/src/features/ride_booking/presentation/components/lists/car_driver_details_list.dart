import 'package:cabu_cabu_user_mobile/src/core/components/tiles/custom_divide_tiles.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/icon_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CarDriverDetailsList extends StatelessWidget {
  final bool isDriverDetails;

  const CarDriverDetailsList({
    super.key,
    this.isDriverDetails = true,
  });

  @override
  Widget build(BuildContext context) {
    return CustomDivideTiles(
      dividerIndent: 42.w,
      spacing: 3,
      tiles: [
        const RideDetailsListTile(
          title: 'Car owner: John Doe',
          icon: AppIcons.car,
        ),
        const RideDetailsListTile(
          title: 'Number plate: ABC 123',
          icon: AppIcons.number,
        ),
        const RideDetailsListTile(
          title: 'Color: Black',
          icon: AppIcons.color,
        ),
        const RideDetailsListTile(
          title: 'Seats: 4',
          icon: AppIcons.seat,
        ),
        const RideDetailsListTile(
          title: 'Brand / Model: Toyota',
          icon: AppIcons.brand,
        ),
        const RideDetailsListTile(
          title: 'Rating: 4.5',
          icon: AppIcons.star,
        ),
        const RideDetailsListTile(
          title: 'Glass tinted: Yes',
          icon: AppIcons.glass,
        ),
        if (isDriverDetails == false) ...[
          const RideDetailsListTile(
            title: 'Drive Plan',
            icon: AppIcons.seat,
          ),
          const DestinationDetails(),
        ] else ...[
          const RideDetailsListTile(
            title: 'Phone Number: 09012345678',
            icon: AppIcons.call,
          ),
        ],
      ],
    );
  }
}

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
            child: SvgPicture.asset(
              AppIcons.flight,
              colorFilter: ColorFilter.mode(
                AppColors.black.withOpacity(0.7),
                BlendMode.srcIn,
              ),
            ),
            // Icon(
            //   Icons.airplanemode_active,
            //   color: AppColors.black.withOpacity(0.7),
            // ),
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
  final String icon;

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
      leading: SvgPicture.asset(
        icon,
        width: 30,
        height: 30,
        fit: BoxFit.scaleDown,
        colorFilter: ColorFilter.mode(
          AppColors.black.withOpacity(0.7),
          BlendMode.srcIn,
        ),
      ),
      // Icon(
      //   icon,
      //   size: 30,
      //   color: AppColors.black.withOpacity(0.7),
      // ),
      visualDensity: VisualDensity.compact,
      contentPadding: EdgeInsets.zero,
      titleAlignment: ListTileTitleAlignment.bottom,
    );
  }
}
