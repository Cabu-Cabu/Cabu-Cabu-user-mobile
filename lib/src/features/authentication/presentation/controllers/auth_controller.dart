import 'package:cabu_cabu_user_mobile/core/common/entities/user.dart';
import 'package:cabu_cabu_user_mobile/src/features/authentication/data/repo_impl/auth_repo_impl.dart';
import 'package:cabu_cabu_user_mobile/src/features/authentication/domain/repos/auth_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part '../state/auth_state.dart';

class AuthNotifier
    extends AutoDisposeFamilyAsyncNotifier<AuthState, GlobalKey> {
  @override
  AuthState build(GlobalKey? arg) {
    // _forgotPassword = sl<ForgotPassword>();
    // _login = sl<Login>();
    // _registerWithGoogle = sl<RegisterWithGoogle>();
    // _register = sl<Register>();
    // _resendEmailOtp = sl<ResendEmailOtp>();
    // _resetPassword = sl<ResetPassword>();
    // _signinWithGoogle = sl<SigninWithGoogle>();
    // _verifyEmail = sl<VerifyEmail>();
    // _verifyPasswordOtp = sl<VerifyPasswordOtp>();
    _authRepo = ref.read(authRepoProvider);

    return AuthInitial();
  }

  // late ForgotPassword _forgotPassword;
  // late Login _login;
  // late RegisterWithGoogle _registerWithGoogle;
  // late Register _register;
  // late ResendEmailOtp _resendEmailOtp;
  // late ResetPassword _resetPassword;
  // late SigninWithGoogle _signinWithGoogle;
  // late VerifyEmail _verifyEmail;
  // late VerifyPasswordOtp _verifyPasswordOtp;
  late AuthRepo _authRepo;

  Future<void> signUpWithEmail({
    required String email,
    required String password,
  }) async {
    state = const AsyncValue.loading();

    final result = await _authRepo.signUpWithEmail(
      email: email,
      password: password,
    );

    if (result.failure != null) {
      state = AsyncValue.error(
        result.failure!.message,
        StackTrace.current,
      );
      return;
    }

    state = AsyncValue.data(Registered());
  }

  Future<void> signInWithEmail({
    required String email,
    required String password,
  }) async {
    state = const AsyncValue.loading();

    final (:failure, :data) = await _authRepo.signInWithEmail(
      email: email,
      password: password,
    );

    if (failure != null) {
      state = AsyncValue.error(
        failure.message,
        StackTrace.current,
      );
      return;
    }

    // Update current user
    state = AsyncValue.data(LoggedIn());
  }

  // Future<void> forgotPassword({required String email}) async {
  //   state = const AsyncValue.loading();
  //   final (:failure, :data) = await _forgotPassword(email);
  //   if (failure != null) {
  //     state = AsyncValue.error(
  //       failure.errorMessage,
  //       StackTrace.current,
  //     );
  //     return;
  //   }
  //   state = AsyncValue.data(PasswordOTPSent());
  // }

  // Future<void> login({
  //   required String identifier,
  //   required String password,
  // }) async {
  //   state = const AsyncValue.loading();
  //   final (:failure, :data) = await _login(
  //     LoginParams(
  //       identifier: identifier,
  //       password: password,
  //     ),
  //   );
  //   if (failure != null) {
  //     state = AsyncValue.error(
  //       failure.errorMessage,
  //       StackTrace.current,
  //     );
  //     return;
  //   }
  //   // Update current user
  //   ref.read(currentUserProvider.notifier).setUser(data);
  //   state = AsyncValue.data(LoggedIn(data!));
  // }

  // Future<void> register({
  //   required String email,
  //   required String password,
  //   required String firstName,
  //   required String lastName,
  //   required Gender gender,
  //   required String phone,
  //   required String dob,
  // }) async {
  //   state = const AsyncValue.loading();
  //   final (:failure, :data) = await _register(
  //     RegisterParams(
  //       email: email,
  //       password: password,
  //       firstName: firstName,
  //       lastName: lastName,
  //       gender: gender,
  //       phone: phone,
  //       dob: dob,
  //     ),
  //   );

  //   if (failure != null) {
  //     state = AsyncValue.error(
  //       failure.errorMessage,
  //       StackTrace.current,
  //     );
  //     return;
  //   }
  //   state = AsyncValue.data(Registered());
  // }

  // Future<void> registerWithGoogle({
  //   required String email,
  //   required String gender,
  //   required String phone,
  //   required String dob,
  // }) async {
  //   state = const AsyncValue.loading();

  //   final (:failure, :data) = await _registerWithGoogle(
  //     RegisterWithGoogleParams(
  //       email: email,
  //       gender: gender,
  //       phone: phone,
  //       dob: dob,
  //     ),
  //   );
  //   if (failure != null) {
  //     state = AsyncValue.error(
  //       failure.errorMessage,
  //       StackTrace.current,
  //     );
  //     return;
  //   }
  //   // Update current user
  //   ref.read(currentUserProvider.notifier).setUser(data);
  //   state = AsyncValue.data(RegisteredUsingGoogle(data!));
  // }

  // Future<void> resendEmailOTP(String email) async {
  //   state = const AsyncValue.loading();

  //   final (:failure, :data) = await _resendEmailOtp(email);
  //   if (failure != null) {
  //     state = AsyncValue.error(
  //       failure.errorMessage,
  //       StackTrace.current,
  //     );
  //     return;
  //   }
  //   state = AsyncValue.data(EmailOTPResent());
  // }

  // Future<void> resetPassword({
  //   required String email,
  //   required String otp,
  //   required String newPassword,
  // }) async {
  //   state = const AsyncValue.loading();

  //   final (:failure, :data) = await _resetPassword(
  //     ResetPasswordParams(
  //       email: email,
  //       otp: otp,
  //       newPassword: newPassword,
  //     ),
  //   );
  //   if (failure != null) {
  //     state = AsyncValue.error(
  //       failure.errorMessage,
  //       StackTrace.current,
  //     );
  //     return;
  //   }
  //   state = AsyncValue.data(PasswordReset());
  // }

  // Future<void> signinWithGoogle(String token) async {
  //   state = const AsyncValue.loading();

  //   final (:failure, :data) = await _signinWithGoogle(token);
  //   if (failure != null) {
  //     state = AsyncValue.error(
  //       failure.errorMessage,
  //       StackTrace.current,
  //     );
  //     return;
  //   }

  //   if (data == null) {
  //     state = AsyncValue.data(AuthInitial());
  //     return;
  //   }
  //   // Update current user
  //   ref.read(currentUserProvider.notifier).setUser(data);
  //   state = AsyncValue.data(SignedInUsingGoogle(data));
  // }

  // Future<void> verifyEmail({
  //   required String email,
  //   required String otp,
  // }) async {
  //   state = const AsyncValue.loading();

  //   final (:failure, :data) = await _verifyEmail(
  //     VerifyEmailParams(
  //       email: email,
  //       otp: otp,
  //     ),
  //   );
  //   if (failure != null) {
  //     state = AsyncValue.error(
  //       failure.errorMessage,
  //       StackTrace.current,
  //     );
  //     return;
  //   }
  //   // Update current user
  //   ref.read(currentUserProvider.notifier).setUser(data);
  //   state = AsyncValue.data(EmailOTPVerified(data!));
  // }

  // Future<void> verifyPasswordOTP({
  //   required String email,
  //   required String otp,
  // }) async {
  //   state = const AsyncValue.loading();

  //   final (:failure, :data) = await _verifyPasswordOtp(
  //     VerifyPasswordOtpParams(
  //       email: email,
  //       otp: otp,
  //     ),
  //   );
  //   if (failure != null) {
  //     state = AsyncValue.error(
  //       failure.errorMessage,
  //       StackTrace.current,
  //     );
  //     return;
  //   }
  //   state = AsyncValue.data(PasswordOTPVerified());
  // }
}

final authProvider =
    AutoDisposeAsyncNotifierProviderFamily<AuthNotifier, AuthState, GlobalKey>(
  AuthNotifier.new,
  name: 'authProvider',
);
