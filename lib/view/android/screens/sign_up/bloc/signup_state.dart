part of 'signup_bloc.dart';

@immutable
abstract class SignupState {}

class SignupInitial extends SignupState {}

class SignupLoading extends SignupState {}

class SignupSuccessful extends SignupState {
  final AuthenticatedUser user;

  SignupSuccessful(this.user);
}

class SignupError extends SignupState {
  final String errorMessage;

  SignupError(this.errorMessage);
}
