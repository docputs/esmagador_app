import 'package:dartz/dartz.dart';

import '../errors/workout_failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<WorkoutFailure, Type>> call(Params params);
}
