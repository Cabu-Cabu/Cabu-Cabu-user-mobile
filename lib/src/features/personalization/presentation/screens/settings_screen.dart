import 'package:cabu_cabu_user_mobile/src/core/components/tiles/custom_divide_tiles.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/sizes.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/domain/enums/settings_list_tile.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/components/header_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultPadding),
        child: Column(
          children: [
            const PersonalizationScreenHeader(title: 'Settings'),
            28.verticalSpace,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomDivideTiles(
                      spacing: 4.h,
                      dividerIndent: 50.w,
                      tiles: [
                        ...SettingsListTilesEnum.values.map(
                          (tile) {
                            return SettingListTile(tile: tile);
                          },
                        ),
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

class SettingListTile extends StatelessWidget {
  final SettingsListTilesEnum tile;

  const SettingListTile({
    super.key,
    required this.tile,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(tile.title),
      titleTextStyle: context.textTheme.headlineSmall,
      leading: SvgPicture.asset(
        tile.icon,
        width: 24.w,
        height: 24.h,
        fit: BoxFit.scaleDown,
      ),
      trailing: tile.showSwitch
          ? Switch(
              value: true,
              onChanged: (value) {},
            )
          : null,
      onTap: tile.screen != null ? () => context.push(tile.screen!) : null,
    );
  }
}
