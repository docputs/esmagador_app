import 'package:dartz/dartz.dart';

import '../../core/errors/workout_failures.dart';
import '../../core/usecases/no_params.dart';
import '../../core/usecases/usecase.dart';
import '../entities/workout.dart';
import '../repositories/workout_repository.dart';

class GetWorkoutList implements UseCase<List<Workout>, NoParams> {
  final WorkoutRepository _repository;

  const GetWorkoutList(this._repository);

  @override
  Future<Either<WorkoutFailure, List<Workout>>> call(NoParams params) {
    return _repository.getWorkoutList();
  }
}
