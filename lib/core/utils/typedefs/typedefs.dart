import 'package:cabu_cabu_user_mobile/core/errors/failures.dart';

typedef FutureResult<T> = Future<({Failure? failure, T? data})>;

typedef StreamResult<T> = Stream<({Failure? failure, T? data})>;
