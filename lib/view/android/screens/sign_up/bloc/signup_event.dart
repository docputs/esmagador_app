part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}

class SignupUserEvent extends SignupEvent {
  final String displayName;
  final String email;
  final String password;

  SignupUserEvent({
    @required this.displayName,
    @required this.email,
    @required this.password,
  });
}
