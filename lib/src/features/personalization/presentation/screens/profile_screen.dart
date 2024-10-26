import 'package:cabu_cabu_user_mobile/core/common/providers/user_provider.dart';
import 'package:cabu_cabu_user_mobile/core/components/tiles/custom_divide_tiles.dart';
import 'package:cabu_cabu_user_mobile/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/core/utils/constants/sizes.dart';
import 'package:cabu_cabu_user_mobile/src/features/authentication/presentation/screens/login_screen.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/domain/enums/profile_list_tiles.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/components/header_section.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/components/profile/header_buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
              Consumer(builder: (_, ref, __) {
                final user = ref.watch(currentUserProvider(
                    FirebaseAuth.instance.currentUser!.uid));
                final userState = user.whenOrNull(
                  data: (state) => state,
                  error: (e, s) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(e.toString()),
                      ),
                    );
                    return null;
                  },
                );

                return PersonalizationScreenHeader(
                  title: 'Hello,\n${userState?.name ?? 'User'}',
                );
              }),
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
                      onTap: () async {
                        if (tile == ProfileListTile.logout) {
                          await FirebaseAuth.instance.signOut();
                          SchedulerBinding.instance.addPostFrameCallback((_) {
                            context.pushAndRemoveUntil(SigninScreen());
                          });
                          return;
                        }
                        context.push(tile.screen);
                      },
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
