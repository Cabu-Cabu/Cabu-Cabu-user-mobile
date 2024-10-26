import 'package:cabu_cabu_user_mobile/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:cabu_cabu_user_mobile/src/features/authentication/presentation/screens/change_password_screen.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/screens/bottom_nav_bar/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SigninForm extends ConsumerStatefulWidget {
  const SigninForm({
    super.key,
  });

  @override
  ConsumerState<SigninForm> createState() => _SigninFormState();
}

class _SigninFormState extends ConsumerState<SigninForm> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  final GlobalKey _globalKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final authStateProvider = ref.watch(authProvider(_globalKey));

    ref.listen(authProvider(_globalKey), (prev, cur) {
      cur.whenOrNull(
        data: (state) {
          if (state is LoggedIn) {
            context.pushAndRemoveUntil(DashboardScreen());
          }
        },
        error: (e, s) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(e.toString()),
            ),
          );
        },
      );
    });

    return Column(
      children: [
        TextFormField(
          controller: _emailController,
          decoration: const InputDecoration(
            hintText: AppTexts.email,
            prefixIcon: Icon(Icons.email_outlined),
          ),
        ),
        20.verticalSpace,
        TextFormField(
          controller: _passwordController,
          decoration: const InputDecoration(
            hintText: AppTexts.password,
            prefixIcon: Icon(Icons.lock_outline),
          ),
        ),
        12.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
                8.horizontalSpace,
                Text(
                  AppTexts.remember,
                  style: context.textTheme.titleSmall?.copyWith(
                    fontSize: 15.sp,
                    color: context.isDarkMode ? null : AppColors.opacBlack,
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () => context.push(const ChangePasswordScreen()),
              child: Text(
                AppTexts.forgotPassword,
                style: context.textTheme.titleSmall?.copyWith(
                  fontSize: 14.sp,
                  color: context.isDarkMode ? null : AppColors.primary,
                ),
              ),
            ),
          ],
        ),
        30.verticalSpace,
        SizedBox(
          width: double.infinity,
          // height: 60.h,
          child: ElevatedButton(
            onPressed: authStateProvider.isLoading
                ? null
                : () async {
                    await ref
                        .read(authProvider(_globalKey).notifier)
                        .signInWithEmail(
                          email: _emailController.text,
                          password: _passwordController.text,
                        );
                  },
            child: authStateProvider.isLoading
                ? const CircularProgressIndicator()
                : Text(
                    AppTexts.login,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontSize: 16.sp,
                      color: AppColors.white,
                    ),
                  ),
          ),
        ),
        10.verticalSpace,
      ],
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
