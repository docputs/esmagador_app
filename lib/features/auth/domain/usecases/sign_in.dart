import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:esmagador/features/auth/core/errors/failures.dart';
import 'package:esmagador/features/auth/core/util/email_validator.dart';
import 'package:flutter/foundation.dart';

import '../../core/errors/auth_failure.dart';
import '../../core/usecases/usecase.dart';
import '../repositories/user_repository.dart';

class SignIn extends UseCase<Unit, Params> {
  final EmailValidator validator;
  final UserRepository userRepository;

  SignIn({
    @required this.validator,
    @required this.userRepository,
  });

  Future<Either<AuthFailure, Unit>> call(Params params) async {
    final emailEither = validator.validateEmailAddress(params.email);
    return emailEither.fold(
      (failure) => left(InvalidEmailAddress('Email inválido')),
      (_) {
        return userRepository.signInWithEmailAndPassword(
            email: params.email, password: params.password);
      },
    );
  }
}

class Params extends Equatable {
  final String email;
  final String password;

  const Params({
    @required this.email,
    @required this.password,
  });

  @override
  List<Object> get props => [email, password];
}
