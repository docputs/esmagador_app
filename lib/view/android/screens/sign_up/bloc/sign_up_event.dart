part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpEvent {}

class SignUpUserEvent extends SignUpEvent {
  final String displayName;
  final String email;
  final String password;

  SignUpUserEvent({
    @required this.displayName,
    @required this.email,
    @required this.password,
  });
}
