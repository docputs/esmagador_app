part of 'user_authentication_bloc.dart';

abstract class UserAuthenticationEvent extends Equatable {
  const UserAuthenticationEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends UserAuthenticationEvent {}

class SignInEvent extends UserAuthenticationEvent {
  final String email;
  final String password;

  SignInEvent({
    @required this.email,
    @required this.password,
  }) : super();

  @override
  List<Object> get props => [email, password];
}

class RegisterEvent extends UserAuthenticationEvent {
  final String displayName;
  final String email;
  final String password;

  const RegisterEvent({
    @required this.displayName,
    @required this.email,
    @required this.password,
  });

  @override
  List<Object> get props => [displayName, email, password];
}

class LogoutEvent extends UserAuthenticationEvent {
  const LogoutEvent();
}
