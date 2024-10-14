import 'dart:ui';

import 'package:cabu_cabu_user_mobile/src/core/utils/constants/icon_strings.dart';

enum SecurityListTilesEnum {
  resetPassword(
    title: 'Reset Password',
    icon: AppIcons.resetPassword,
  );

  const SecurityListTilesEnum({
    required this.title,
    required this.icon,
    this.showSwitch = false,
    this.onTap,
  });

  final String title;
  final String icon;
  final bool showSwitch;
  final VoidCallback? onTap;
}
