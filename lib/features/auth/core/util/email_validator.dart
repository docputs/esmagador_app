import 'package:dartz/dartz.dart';
import 'package:esmagador/features/auth/core/errors/auth_failure.dart';
import 'package:esmagador/features/auth/core/errors/failures.dart';

class EmailValidator {
  Either<AuthFailure, String> validateEmailAddress(String input) {
    const emailRegexp =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    if (RegExp(emailRegexp).hasMatch(input)) {
      return right(input);
    } else {
      return left(EmailBadlyFormatted('Email inválido'));
    }
  }
}
