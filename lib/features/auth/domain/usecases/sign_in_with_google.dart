import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../workout/core/usecases/no_params.dart';
import '../../core/errors/auth_failure.dart';
import '../../core/usecases/usecase.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class SignInWithGoogle extends UseCase<Unit, NoParams> {
  final UserRepository userRepository;

  SignInWithGoogle(this.userRepository);

  Future<Either<AuthFailure, Unit>> call(NoParams params) {
    return userRepository.signInWithGoogle();
  }
}
