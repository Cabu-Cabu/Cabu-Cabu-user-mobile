part of '../controllers/auth_controller.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

/// Initial state
class AuthInitial extends AuthState {}

/// Loading state
class AuthLoading extends AuthState {}

/// Success states
class PasswordOTPSent extends AuthState {}

class LoggedIn extends AuthState {}

class RegisteredUsingGoogle extends AuthState {
  const RegisteredUsingGoogle(this.user);

  final User user;

  @override
  List<Object?> get props => [user];
}

class Registered extends AuthState {}

class EmailOTPResent extends AuthState {}

class PasswordReset extends AuthState {}

class SignedInUsingGoogle extends AuthState {
  const SignedInUsingGoogle(this.user);

  final User user;

  @override
  List<Object?> get props => [user];
}

class EmailOTPVerified extends AuthState {
  const EmailOTPVerified(this.user);

  final User user;

  @override
  List<Object?> get props => [user];
}

class PasswordOTPVerified extends AuthState {}

/// Error state
class AuthError extends AuthState {
  const AuthError(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}
