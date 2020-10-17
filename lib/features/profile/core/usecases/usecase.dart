import 'package:dartz/dartz.dart';

import '../error/profile_failure.dart';

abstract class UseCase<T, Params> {
  Future<Either<ProfileFailure, T>> call(Params params);
}
