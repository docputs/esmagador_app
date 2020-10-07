import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../core/errors/auth_failure.dart';
import '../../core/usecases/usecase.dart';
import '../repositories/user_repository.dart';

class SignUp extends UseCase<Unit, Params> {
  final UserRepository _repository;

  SignUp(this._repository);

  Future<Either<AuthFailure, Unit>> call(Params params) {
    return _repository.createAccount(
        displayName: params.displayName,
        email: params.email,
        password: params.password);
  }
}

class Params {
  final String displayName;
  final String email;
  final String password;

  const Params({
    @required this.displayName,
    @required this.email,
    @required this.password,
  });

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Params &&
        o.displayName == displayName &&
        o.email == email &&
        o.password == password;
  }

  @override
  int get hashCode => displayName.hashCode ^ email.hashCode ^ password.hashCode;
}
