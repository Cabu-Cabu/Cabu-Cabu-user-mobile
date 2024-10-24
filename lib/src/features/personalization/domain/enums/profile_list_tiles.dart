import 'package:cabu_cabu_user_mobile/src/core/utils/constants/icon_strings.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/screens/chats_screen.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/screens/notifications_screen.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/screens/security_screen.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/screens/settings_screen.dart';
import 'package:flutter/material.dart';

enum ProfileListTile {
  messages(AppTexts.messages, AppIcons.message, ChatsScreen()),
  notification(
      AppTexts.notification, AppIcons.notification, NotificationsScreen()),
  settings(AppTexts.settings, AppIcons.setting, SettingsScreen()),
  security(AppTexts.security, AppIcons.security, SecurityScreen()),
  logout(AppTexts.logout, AppIcons.logout, SecurityScreen()),
  ;

  const ProfileListTile(this.title, this.icon, this.screen);

  final String title;
  final String icon;
  final Widget screen;
}
