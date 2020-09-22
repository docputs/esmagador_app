import 'auth_failure.dart';

class EmailAlreadyInUse extends AuthFailure {
  EmailAlreadyInUse(String message) : super(message);
}

class CancelledByUser extends AuthFailure {
  CancelledByUser(String message) : super(message);
}

class InvalidEmailAddress extends AuthFailure {
  InvalidEmailAddress(String message) : super(message);
}

class InvalidEmailAndPasswordCombination extends AuthFailure {
  InvalidEmailAndPasswordCombination(String message) : super(message);
}

class EmailBadlyFormatted extends AuthFailure {
  EmailBadlyFormatted(String message) : super(message);
}

class WeakPassword extends AuthFailure {
  WeakPassword(String message) : super(message);
}

class ServerFailure extends AuthFailure {
  ServerFailure(String message) : super(message);
}

class UnknownFailure extends AuthFailure {
  UnknownFailure(String message) : super(message);
}
