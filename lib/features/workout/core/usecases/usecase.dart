import 'package:dartz/dartz.dart';

import '../errors/workout_failures.dart';

abstract class UseCase<T, Params> {
  Future<Either<WorkoutFailure, T>> call(Params params);
}
