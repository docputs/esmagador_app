import 'package:dartz/dartz.dart';

import '../../core/errors/workout_failures.dart';
import '../../core/usecases/usecase.dart';
import '../entities/workout.dart';
import '../repositories/workout_repository.dart';

class EditWorkout implements UseCase<Unit, Workout> {
  final WorkoutRepository _repository;

  const EditWorkout(this._repository);

  @override
  Future<Either<WorkoutFailure, Unit>> call(Workout workout) {
    return _repository.editWorkout(workout);
  }
}
