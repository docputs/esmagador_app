import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import '../../core/errors/auth_failure.dart';
import '../../core/usecases/usecase.dart';
import '../repositories/user_repository.dart';

class SignIn extends UseCase<Unit, Params> {
  final UserRepository userRepository;

  SignIn(this.userRepository);

  Future<Either<AuthFailure, Unit>> call(Params params) {
    return userRepository.signInWithEmailAndPassword(
        email: params.email, password: params.password);
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
