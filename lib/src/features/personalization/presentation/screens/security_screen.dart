import 'package:cabu_cabu_user_mobile/src/core/components/tiles/custom_divide_tiles.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/sizes.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/domain/enums/security_list_tiles.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/components/header_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultPadding),
        child: Column(
          children: [
            const PersonalizationScreenHeader(title: 'Security'),
            28.verticalSpace,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomDivideTiles(
                      tiles: [
                        ...SecurityListTilesEnum.values.map(
                          (tile) {
                            return SecurityListTile(tile: tile);
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

class SecurityListTile extends StatelessWidget {
  final SecurityListTilesEnum tile;

  const SecurityListTile({
    super.key,
    required this.tile,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(tile.title),
      leading: SvgPicture.asset(
        tile.icon,
        width: 24.w,
        height: 24.h,
      ),
      trailing: tile.showSwitch
          ? Switch(
              value: false,
              onChanged: (value) {},
            )
          : null,
      onTap: tile.onTap,
    );
  }
}
