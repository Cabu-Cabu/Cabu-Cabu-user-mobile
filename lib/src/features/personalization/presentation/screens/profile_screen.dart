import 'package:cabu_cabu_user_mobile/src/core/components/tiles/custom_divide_tiles.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/sizes.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/domain/enums/profile_list_tiles.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/components/header_section.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/components/profile/header_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultPadding),
          child: Column(
            children: [
              const PersonalizationScreenHeader(
                title: 'Hello,\nMark',
              ),
              24.verticalSpace,
              const ProfileHeaderActionButtons(),
              20.verticalSpace,
              CustomDivideTiles(
                dividerIndent: 48.w,
                spacing: 5.h,
                tiles: ProfileListTile.values.map(
                  (ProfileListTile tile) {
                    return ListTile(
                      leading: SvgPicture.asset(
                        tile.icon,
                        width: 24,
                        height: 24,
                        colorFilter: const ColorFilter.mode(
                          AppColors.black,
                          BlendMode.srcIn,
                        ),
                      ),
                      onTap: () => context.push(tile.screen),
                      title: Text(
                        tile.title,
                        style: context.textTheme.headlineSmall,
                      ),
                    );
                  },
                ).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
