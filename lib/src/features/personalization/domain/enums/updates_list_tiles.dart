import 'dart:ui';

import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';

enum UpdatesListTilesEnum {
  updateOverWifi(
    title: AppTexts.autoUpdate,
    subTitle: AppTexts.updateOverWifi,
    showSwitch: true,
  ),

  updateNotification(
    title: AppTexts.autoUpdate,
    subTitle: AppTexts.updateNotification,
    showSwitch: true,
  ),
  ;

  const UpdatesListTilesEnum({
    required this.title,
    required this.subTitle,
    this.showSwitch = false,
    this.icon,
    this.onTap,
  });

  final String title;
  final String subTitle;
  final String? icon;
  final bool showSwitch;
  final VoidCallback? onTap;
}
