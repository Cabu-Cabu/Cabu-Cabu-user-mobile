import 'package:cabu_cabu_user_mobile/core/common/entities/user.dart';
import 'package:cabu_cabu_user_mobile/core/utils/typedefs/typedefs.dart';

abstract interface class AuthRepo {
  // FutureResult<void> signInWithGoogle();

  FutureResult<void> signInWithEmail({
    required String email,
    required String password,
  });

  FutureResult<User> signUpWithEmail({
    required String email,
    required String password,
  });

  // FutureResult<void> signOut();

  // FutureResult<void> resetPassword({
  //   required String email,
  // });

  // FutureResult<void> changePassword({
  //   required String oldPassword,
  //   required String newPassword,
  // });

  // FutureResult<void> changeEmail({
  //   required String newEmail,
  // });

  // FutureResult<void> deleteAccount();

  // FutureResult<void> forgotPassword({
  //   required String email,
  // });
}
