import 'package:cabu_cabu_user_mobile/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/authentication/presentation/components/signup/terms_conditions_checkbox.dart';
import 'package:cabu_cabu_user_mobile/src/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:cabu_cabu_user_mobile/src/features/authentication/presentation/screens/signup_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupForm extends ConsumerStatefulWidget {
  const SignupForm({
    super.key,
  });

  @override
  ConsumerState<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends ConsumerState<SignupForm> {
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
    ref.listen(authProvider(_globalKey), (prev, cur) {
      cur.whenOrNull(
        data: (state) {
          if (state is Registered) {
            context.pushAndRemoveUntil(SignupDetailsScreen());
          }
        },
        error: (error, _) => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(error.toString())),
        ),
      );
    });

    final authProviderState = ref.watch(authProvider(_globalKey));

    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          controller: _emailController,
          decoration: const InputDecoration(
            hintText: AppTexts.email,
            prefixIcon: Icon(Icons.email_outlined),
          ),
        ),
        20.verticalSpace,
        TextFormField(
          obscureText: true,
          controller: _passwordController,
          decoration: const InputDecoration(
            hintText: AppTexts.password,
            prefixIcon: Icon(Icons.lock_outline),
          ),
        ),
        20.verticalSpace,
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            hintText: AppTexts.confirmPassword,
            prefixIcon: Icon(Icons.lock_outline),
          ),
        ),
        16.verticalSpace,
        const AppTermsAndConditionsCheckBox(),
        30.verticalSpace,
        SizedBox(
          width: double.infinity,
          // height: 60.h,
          child: ElevatedButton(
            onPressed: authProviderState.isLoading ? null : _signUp,
            child: authProviderState.isLoading
                ? CircularProgressIndicator()
                : Text(AppTexts.signup),
          ),
        ),
        10.verticalSpace,
      ],
    );
  }

  void _signUp() => ref
      .read(
        authProvider(_globalKey).notifier,
      )
      .signUpWithEmail(
        email: _emailController.text,
        password: _passwordController.text,
      );

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
