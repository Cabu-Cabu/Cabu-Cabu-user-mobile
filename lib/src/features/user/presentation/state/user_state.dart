part of '../providers/user_controller.dart';

sealed class UserState extends Equatable {
  const UserState();

  @override
  List<Object?> get props => [];
}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserError extends UserState {
  final String message;

  const UserError(this.message);

  @override
  List<Object?> get props => [message];
}

class UserLoaded extends UserState {
  final User user;

  const UserLoaded(this.user);

  @override
  List<Object?> get props => [user];
}

class UserRegistered extends UserState {}

class UserSignedIn extends UserState {}

class UserSignedOut extends UserState {}

class UserUpdated extends UserState {}

class UserDeleted extends UserState {}

class UserPasswordReset extends UserState {}

class UserPasswordVerified extends UserState {}

class UserEmailVerified extends UserState {}

class UserEmailOtpResent extends UserState {}

class UserGoogleSignedIn extends UserState {}

class UserGoogleRegistered extends UserState {}

class UserGoogleLinked extends UserState {}
