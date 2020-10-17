import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'package:esmagador/features/auth/core/util/validators.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/auth_failure.dart';
import '../../core/usecases/usecase.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class SignIn extends UseCase<Unit, Params> {
  final Validators validators;
  final UserRepository userRepository;

  SignIn({
    @required this.validators,
    @required this.userRepository,
  });

  Future<Either<AuthFailure, Unit>> call(Params params) async {
    final emailEither = validators.validateEmailAddress(params.email);
    return emailEither.fold(
      (failure) => left(AuthFailure.invalidEmailAddress()),
      (_) => userRepository.signInWithEmailAndPassword(
          email: params.email, password: params.password),
    );
  }
}

class Params {
  final String email;
  final String password;

  const Params({
    @required this.email,
    @required this.password,
  });

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Params && o.email == email && o.password == password;
  }

  @override
  int get hashCode => email.hashCode ^ password.hashCode;
}
