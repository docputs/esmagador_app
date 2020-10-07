import 'package:dartz/dartz.dart';
import 'package:esmagador/features/auth/core/errors/auth_failure.dart';
import 'package:esmagador/features/auth/core/util/validators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  EmailValidator validator;

  setUp(() {
    validator = EmailValidator();
  });

  test('should return email adress when input is valid', () {
    final input = 'teste@teste.com';

    final result = validator.validateEmailAddress(input);

    expect(result, Right(input));
  });

  test('should return AuthFailure when email is invalid', () {
    final input = 'teste';

    final result = validator.validateEmailAddress(input);

    expect(result, Left(AuthFailure.emailBadlyFormatted()));
  });
}
