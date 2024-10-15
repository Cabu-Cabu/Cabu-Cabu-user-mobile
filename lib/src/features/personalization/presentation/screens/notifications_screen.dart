import 'package:cabu_cabu_user_mobile/src/core/components/custom_shapes/containers/rounded_container.dart';
import 'package:cabu_cabu_user_mobile/src/core/components/tiles/custom_divide_tiles.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/icon_strings.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/sizes.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/components/header_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultPadding),
        child: Column(
          children: [
            const PersonalizationScreenHeader(title: AppTexts.notification),
            40.verticalSpace,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomDivideTiles(
                      dividerIndent: 45.w,
                      spacing: 6,
                      tiles: List.generate(3, (index) {
                        return ListTile(
                          title: Text('Payment successful'),
                          // titleTextStyle: context.textTheme.headlineSmall,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                          ),
                          leading: SvgPicture.asset(
                            AppIcons.notification,
                            width: 24,
                            height: 24,
                          ),
                          trailing: AppRoundedContainer(
                            width: 98,
                            height: 40,
                            color: AppColors.success,
                            child: Text(
                              'Confirmed',
                              style: context.textTheme.labelLarge?.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        );
                      }),
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
