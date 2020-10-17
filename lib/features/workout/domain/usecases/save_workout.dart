import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/workout_failures.dart';
import '../../core/usecases/usecase.dart';
import '../entities/workout.dart';
import '../repositories/workout_repository.dart';

@lazySingleton
class SaveWorkout implements UseCase<Unit, Workout> {
  final WorkoutRepository _repository;

  const SaveWorkout(this._repository);

  @override
  Future<Either<WorkoutFailure, Unit>> call(Workout workout) {
    return _repository.saveWorkout(workout);
  }
}
