import 'package:cabu_cabu_user_mobile/core/common/entities/user.dart';
import 'package:cabu_cabu_user_mobile/core/utils/typedefs/typedefs.dart';
import 'package:cabu_cabu_user_mobile/src/features/user/data/data_sources/user_remote_data_src.dart';
import 'package:cabu_cabu_user_mobile/src/features/user/domain/repos/user_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userRepoProvider = Provider<UserRepo>((ref) {
  return UserRepoImpl(ref.read(userRemoteDataSrcProvider));
});

class UserRepoImpl implements UserRepo {
  final UserRemoteDataSrc _userDataSource;

  UserRepoImpl(this._userDataSource);

  @override
  FutureResult<User> saveUserRecord({
    required String id,
    required String email,
    required String name,
    required String location,
    required String phone,
  }) async {
    final result = await _userDataSource.saveUserRecord(
      id: id,
      email: email,
      name: name,
      location: location,
      phone: phone,
    );

    return (failure: null, data: result);
  }

  @override
  Stream<User?> getUserRecord(String id) {
    return _userDataSource.getUserRecord(id);
  }
}
