import 'package:cabu_cabu_user_mobile/core/common/entities/user.dart';
import 'package:cabu_cabu_user_mobile/src/features/user/data/repo_impl/user_repo_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentUserProvider =
    StreamProvider.family<User?, String>((ref, id) async* {
  final userRepo = ref.read(userRepoProvider);
  yield* userRepo.getUserRecord(id);
});
