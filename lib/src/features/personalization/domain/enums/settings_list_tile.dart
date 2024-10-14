import 'dart:ui';

import 'package:cabu_cabu_user_mobile/src/core/utils/constants/icon_strings.dart';

enum SettingsListTilesEnum {
  emailAddress(
    title: 'Email Address',
    icon: AppIcons.email,
  ),

  language(
    title: 'Language',
    icon: AppIcons.language,
  ),

  sound(
    title: 'Sound',
    icon: AppIcons.sound,
    showSwitch: true,
  ),

  darkMode(
    title: 'Dark Mode',
    icon: AppIcons.darkMode,
    showSwitch: true,
  ),

  changeNumber(
    title: 'Change Number',
    icon: AppIcons.switchIcon,
  ),

  update(
    title: 'Update',
    icon: AppIcons.update,
  ),

  deleteAccount(
    title: 'Delete Account',
    icon: AppIcons.delete,
  );

  const SettingsListTilesEnum({
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
