import 'package:cabu_cabu_user_mobile/core/common/models/user_model.dart';
import 'package:cabu_cabu_user_mobile/core/errors/exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRemoteDataSrcProvider = Provider<AuthRemoteDataSrc>((ref) {
  return AuthRemoteDataSrcImpl(FirebaseAuth.instance);
});

abstract interface class AuthRemoteDataSrc {
  Future<UserCredential> signInWithGoogle();
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<UserModel> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<void> signOut();
}

class AuthRemoteDataSrcImpl implements AuthRemoteDataSrc {
  final FirebaseAuth _firebaseAuth;
  // final GoogleSignIn _googleSignIn;

  AuthRemoteDataSrcImpl(this._firebaseAuth);

  @override
  Future<UserCredential> signInWithGoogle() async {
    throw UnimplementedError();
    // final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

    // if (googleUser == null) {
    //   throw Exception('Google sign in aborted');
    // }

    // final GoogleSignInAuthentication googleAuth =
    //     await googleUser.authentication;
    // final googleAuthCredential = GoogleAuthProvider.credential(
    //   accessToken: googleAuth.accessToken,
    //   idToken: googleAuth.idToken,
    // );
    // return await _firebaseAuth.signInWithCredential(googleAuthCredential);
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      debugPrint(e.toString());
      throw AppFirebaseException(
        message: e.message!,
        code: e.code,
      );
    } on AppFirebaseException {
      rethrow;
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      throw AppFirebaseException(
        message: 'An error occurred',
        code: 'unknown',
      );
    }
  }

  @override
  Future<UserModel> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return UserModel(
        id: userCredential.user!.uid,
        email: userCredential.user!.email!,
      );
    } on FirebaseAuthException catch (e) {
      debugPrint(e.toString());
      throw AppFirebaseException(
        message: e.message!,
        code: e.code,
      );
    } on AppFirebaseException {
      rethrow;
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      throw AppFirebaseException(
        message: 'An error occurred',
        code: 'unknown',
      );
    }
  }
}
