import 'package:cabu_cabu_user_mobile/src/core/components/tiles/custom_divide_tiles.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/sizes.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/domain/enums/updates_list_tiles.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/components/header_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultPadding),
        child: Column(
          children: [
            const PersonalizationScreenHeader(title: AppTexts.updateTitle),
            18.verticalSpace,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomDivideTiles(
                      dividerIndent: 12.w,
                      tiles: [
                        ...UpdatesListTilesEnum.values.map(
                          (tile) {
                            return ListTile(
                              title: Text(tile.title),
                              // titleTextStyle: context.textTheme.headlineSmall,
                              subtitle: Text(tile.subTitle),
                              trailing: tile.showSwitch
                                  ? Switch(
                                      value: true,
                                      onChanged: (value) {},
                                    )
                                  : null,
                            );
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
