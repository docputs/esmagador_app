part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}

class SignUpLoading extends SignUpState {}

class SignUpSuccessful extends SignUpState {}

class SignUpError extends SignUpState {
  final String errorMessage;

  SignUpError(this.errorMessage);
}
