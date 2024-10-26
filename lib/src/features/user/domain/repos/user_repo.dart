import 'package:cabu_cabu_user_mobile/core/common/entities/user.dart';
import 'package:cabu_cabu_user_mobile/core/utils/typedefs/typedefs.dart';

abstract interface class UserRepo {
  FutureResult<User> saveUserRecord({
    required String id,
    required String email,
    required String name,
    required String location,
    required String phone,
  });

  Stream<User?> getUserRecord(String id);
}
