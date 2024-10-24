import 'package:cabu_cabu_user_mobile/src/core/utils/constants/icon_strings.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/screens/change_email_address_screen.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/screens/change_phone_number_screen.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/screens/delete_account_screen.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/screens/update_screen.dart';
import 'package:flutter/material.dart';

enum SettingsListTilesEnum {
  emailAddress(
    title: 'Email Address',
    icon: AppIcons.email,
    screen: ChangeEmailAddressScreen(),
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
    screen: ChangePhoneNumberScreen(),
  ),

  update(
    title: 'Update',
    icon: AppIcons.update,
    screen: UpdateScreen(),
  ),

  deleteAccount(
    title: 'Delete Account',
    icon: AppIcons.delete,
    screen: DeleteAccountScreen(),
  );

  const SettingsListTilesEnum({
    required this.title,
    required this.icon,
    this.showSwitch = false,
    this.screen,
  });

  final String title;
  final String icon;
  final bool showSwitch;
  final Widget? screen;
}
