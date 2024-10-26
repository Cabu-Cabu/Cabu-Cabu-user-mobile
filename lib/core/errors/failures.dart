import 'package:cabu_cabu_user_mobile/core/errors/exceptions.dart';
import 'package:equatable/equatable.dart';

sealed class Failure extends Equatable {
  final String message;

  Failure({required this.message});

  @override
  String toString() => message;

  @override
  List<Object> get props => [message];
}

class FirebaseFailure extends Failure {
  FirebaseFailure({required super.message});

  FirebaseFailure.fromException(AppFirebaseException e)
      : super(message: e.message);
}
