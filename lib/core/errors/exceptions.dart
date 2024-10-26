import 'package:equatable/equatable.dart';

class AppFirebaseException extends Equatable implements Exception {
  const AppFirebaseException({
    required this.message,
    required this.code,
  });

  final String message;
  final String code;

  @override
  List<Object> get props => [message, code];
}
