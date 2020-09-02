part of 'login_bloc.dart';

abstract class LoginEvent {}

class TryLogin extends LoginEvent {
  final String email;
  final String password;

  TryLogin({
    @required this.email,
    @required this.password,
  });
}
