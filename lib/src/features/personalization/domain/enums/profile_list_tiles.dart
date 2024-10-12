import 'package:cabu_cabu_user_mobile/src/core/utils/constants/icon_strings.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';

enum ProfileListTile {
  messages(AppTexts.messages, AppIcons.message),
  notification(AppTexts.notification, AppIcons.notification),
  settings(AppTexts.settings, AppIcons.setting),
  security(AppTexts.security, AppIcons.security),
  logout(AppTexts.logout, AppIcons.logout),
  ;

  const ProfileListTile(this.title, this.icon);

  final String title;
  final String icon;
}
