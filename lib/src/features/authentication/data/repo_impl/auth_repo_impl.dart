import 'package:cabu_cabu_user_mobile/core/common/entities/user.dart';
import 'package:cabu_cabu_user_mobile/core/errors/exceptions.dart';
import 'package:cabu_cabu_user_mobile/core/errors/failures.dart';
import 'package:cabu_cabu_user_mobile/core/utils/typedefs/typedefs.dart';
import 'package:cabu_cabu_user_mobile/src/features/authentication/data/data_sources/auth_remote_data_src.dart';
import 'package:cabu_cabu_user_mobile/src/features/authentication/domain/repos/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepoProvider = Provider<AuthRepo>((ref) {
  return AuthRepoImpl(ref.read(authRemoteDataSrcProvider));
});

class AuthRepoImpl implements AuthRepo {
  const AuthRepoImpl(this._remoteDataSrc);

  final AuthRemoteDataSrc _remoteDataSrc;

  @override
  FutureResult<User> signUpWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _remoteDataSrc.signUpWithEmailAndPassword(
        email: email,
        password: password,
      );
      return (failure: null, data: result);
    } on AppFirebaseException catch (e) {
      return (failure: FirebaseFailure.fromException(e), data: null);
    } catch (e) {
      debugPrint(e.toString());
      return (failure: FirebaseFailure(message: 'Unknown Error'), data: null);
    }
  }

  @override
  FutureResult<void> signInWithEmail(
      {required String email, required String password}) async {
    try {
      await _remoteDataSrc.signInWithEmailAndPassword(
          email: email, password: password);
      return (failure: null, data: null);
    } on AppFirebaseException catch (e) {
      return (failure: FirebaseFailure.fromException(e), data: null);
    } catch (e) {
      debugPrint(e.toString());
      return (failure: FirebaseFailure(message: 'Unknown Error'), data: null);
    }
  }
}
