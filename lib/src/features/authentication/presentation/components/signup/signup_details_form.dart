import 'package:cabu_cabu_user_mobile/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/screens/bottom_nav_bar/dashboard_screen.dart';
import 'package:cabu_cabu_user_mobile/src/features/user/presentation/providers/user_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupDetailsForm extends ConsumerStatefulWidget {
  const SignupDetailsForm({
    super.key,
  });

  @override
  ConsumerState<SignupDetailsForm> createState() => _SignupDetailsFormState();
}

class _SignupDetailsFormState extends ConsumerState<SignupDetailsForm> {
  late final TextEditingController _nameController;
  late final TextEditingController _locationController;
  late final TextEditingController _phoneNumberController;

  final GlobalKey _globalKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _locationController = TextEditingController();
    _phoneNumberController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final userStateProvider = ref.watch(userProvider(_globalKey));

    ref.listen(userProvider(_globalKey), (prev, cur) {
      cur.whenOrNull(
        data: (state) {
          if (state is UserRegistered) {
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
          controller: _nameController,
          decoration: const InputDecoration(
            hintText: AppTexts.name,
            prefixIcon: Icon(Icons.person_outline),
          ),
        ),
        20.verticalSpace,
        TextFormField(
          controller: _locationController,
          decoration: const InputDecoration(
            hintText: AppTexts.location,
            prefixIcon: Icon(Icons.location_on_outlined),
          ),
        ),
        20.verticalSpace,
        TextFormField(
          controller: _phoneNumberController,
          decoration: const InputDecoration(
            hintText: AppTexts.phoneNumber,
            prefixIcon: Icon(Icons.phone_outlined),
          ),
        ),
        // const Spacer(flex: 61),
        24.verticalSpace,
        SizedBox(
          width: double.infinity,
          // height: 60.h,
          child: ElevatedButton(
            onPressed: userStateProvider.isLoading
                ? null
                : () {
                    ref.read(userProvider(_globalKey).notifier).saveUserRecord(
                          id: FirebaseAuth.instance.currentUser!.uid,
                          email: FirebaseAuth.instance.currentUser!.email!,
                          phone: _phoneNumberController.text,
                          name: _nameController.text,
                          location: _locationController.text,
                        );
                  },
            child: const Text(AppTexts.finish),
          ),
        ),
        // const Spacer(flex: 167),
      ],
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _locationController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }
}
