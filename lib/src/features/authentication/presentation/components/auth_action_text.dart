import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:flutter/material.dart';

/// A widget for displaying action text with a clickable link.
///
/// The [AuthActionText] widget is used to show a text prompt along with
/// an action link (e.g., "Sign Up"). The action link can trigger a callback
/// when pressed, providing a seamless interaction for users.
class AuthActionText extends StatelessWidget {
  /// Creates an [AuthActionText] widget.
  ///
  /// - [text] is the static text displayed alongside the action link.
  /// - [actionText] is the clickable link text that triggers [onPressed].
  /// - [onPressed] is the callback function executed when the link is pressed.
  const AuthActionText({
    required this.text,
    required this.actionText,
    required this.onPressed,
    super.key,
  });

  /// The static text displayed alongside the action link.
  final String text;

  /// The clickable link text that triggers [onPressed].
  final String actionText;

  /// The callback function executed when the link is pressed.
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Static text displayed
        Text(
          text,
          style: context.textTheme.bodySmall?.copyWith(
            color: AppColors.opacBlack,
          ),
        ),
        // Action link that triggers the callback when pressed
        TextButton(
          onPressed: onPressed,
          child: Text(
            actionText,
            style: context.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
