import 'package:dartz/dartz.dart';
import 'package:esmagador/features/auth/core/errors/auth_failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<AuthFailure, Type>> call(Params params);
}
