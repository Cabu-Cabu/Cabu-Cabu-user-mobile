import 'package:cabu_cabu_user_mobile/core/common/entities/user.dart';
import 'package:cabu_cabu_user_mobile/src/features/user/data/repo_impl/user_repo_impl.dart';
import 'package:cabu_cabu_user_mobile/src/features/user/domain/repos/user_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part '../state/user_state.dart';

class UserNotifier
    extends AutoDisposeFamilyAsyncNotifier<UserState, GlobalKey> {
  @override
  UserState build(GlobalKey? arg) {
    // _forgotPassword = sl<ForgotPassword>();
    // _login = sl<Login>();
    // _registerWithGoogle = sl<RegisterWithGoogle>();
    // _register = sl<Register>();
    // _resendEmailOtp = sl<ResendEmailOtp>();
    // _resetPassword = sl<ResetPassword>();
    // _signinWithGoogle = sl<SigninWithGoogle>();
    // _verifyEmail = sl<VerifyEmail>();
    // _verifyPasswordOtp = sl<VerifyPasswordOtp>();
    _userRepo = ref.read(userRepoProvider);

    return UserInitial();
  }

  late UserRepo _userRepo;

  Future<void> saveUserRecord({
    required String id,
    required String email,
    required String phone,
    required String name,
    required String location,
  }) async {
    state = const AsyncValue.loading();

    final result = await _userRepo.saveUserRecord(
      id: id,
      email: email,
      phone: phone,
      name: name,
      location: location,
    );

    if (result.failure != null) {
      state = AsyncValue.error(
        result.failure!.message,
        StackTrace.current,
      );
      return;
    }

    state = AsyncValue.data(UserRegistered());
  }
}

final userProvider =
    AutoDisposeAsyncNotifierProviderFamily<UserNotifier, UserState, GlobalKey>(
  UserNotifier.new,
  name: 'userProvider',
);
