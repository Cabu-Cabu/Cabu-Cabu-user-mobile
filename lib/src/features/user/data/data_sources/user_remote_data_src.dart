import 'package:cabu_cabu_user_mobile/core/common/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userRemoteDataSrcProvider = Provider<UserRemoteDataSrc>((ref) {
  return UserRemoteDataSrcImpl(FirebaseFirestore.instance);
});

abstract interface class UserRemoteDataSrc {
  Future<UserModel> saveUserRecord({
    required String id,
    required String email,
    required String name,
    required String location,
    required String phone,
  });

  Stream<UserModel> getUserRecord(String id);
}

class UserRemoteDataSrcImpl implements UserRemoteDataSrc {
  UserRemoteDataSrcImpl(this._firestore) {
    _userCollection = _firestore.collection('users').withConverter<UserModel>(
          fromFirestore: (snapshot, _) => UserModel.fromMap(snapshot.data()!),
          toFirestore: (model, _) => model.toMap(),
        );
  }

  final FirebaseFirestore _firestore;
  late final CollectionReference _userCollection;

  @override
  Future<UserModel> saveUserRecord({
    required String id,
    required String email,
    required String name,
    required String location,
    required String phone,
  }) async {
    final user = UserModel(
      id: id,
      email: email,
      name: name,
      location: location,
      phone: phone,
    );

    await _userCollection.doc(id).set(user);

    return user;
  }

  @override
  Stream<UserModel> getUserRecord(String id) {
    return _userCollection.doc(id).snapshots().map(
          (snapshot) => snapshot.data() as UserModel,
        );
  }
}
