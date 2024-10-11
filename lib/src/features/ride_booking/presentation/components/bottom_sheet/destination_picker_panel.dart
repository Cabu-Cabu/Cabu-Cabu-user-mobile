import 'package:cabu_cabu_user_mobile/src/core/components/custom_shapes/containers/rounded_container.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/icon_strings.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/image_strings.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/components/bottom_sheet/panel_search_bar_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DestinationPickerPanel extends StatelessWidget {
  const DestinationPickerPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppRoundedContainer(
            height: 4,
            width: 60.w,
            color: AppColors.lightGrey,
            radius: 10.0,
          ),
          16.verticalSpace,
          const PanelSearchBarHeader(),
          12.verticalSpace,
          ListView.separated(
            itemCount: 3,
            shrinkWrap: true,
            separatorBuilder: (_, __) => Divider(
              thickness: 1.0,
              indent: 55.w,
              height: 3.0,
              color: AppColors.opacBlack,
            ),
            itemBuilder: (_, __) => const PanelDestinationTile(
              title: 'Lekki',
              subtitle: 'Lekki Phase 1',
              image: AppImages.place2,
            ),
          ),
        ],
      ),
    );
  }
}

class PanelDestinationTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const PanelDestinationTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(image),
      ),
      trailing: SvgPicture.asset(AppIcons.group),
      contentPadding: EdgeInsets.symmetric(horizontal: 8.w),
    );
  }
}
