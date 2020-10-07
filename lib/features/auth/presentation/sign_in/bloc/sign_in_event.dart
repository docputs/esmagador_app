part of 'sign_in_bloc.dart';

@freezed
abstract class SignInEvent with _$SignInEvent {
  const factory SignInEvent.emailChanged(String email) = _EmailChanged;
  const factory SignInEvent.passwordChanged(String password) = _PasswordChanged;
  const factory SignInEvent.signInPressed() = _SignInPressed;
  const factory SignInEvent.signInWithGooglePressed() =
      _SignInWithGooglePressed;
}
