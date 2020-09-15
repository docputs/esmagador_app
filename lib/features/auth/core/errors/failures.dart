import 'auth_failure.dart';

class EmailAlreadyInUse extends AuthFailure {
  EmailAlreadyInUse(String message) : super(message);
}

class InvalidEmailAddress extends AuthFailure {
  InvalidEmailAddress(String message) : super(message);
}

class InvalidEmailAndPasswordCombination extends AuthFailure {
  InvalidEmailAndPasswordCombination(String message) : super(message);
}
