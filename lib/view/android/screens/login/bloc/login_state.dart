part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccessful extends LoginState {
  final String email;

  LoginSuccessful({
    @required this.email,
  });
}

class LoginError extends LoginState {
  final String errorMessage;

  LoginError(this.errorMessage);
}
