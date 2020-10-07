import 'package:esmagador/features/workout/core/errors/workout_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:esmagador/features/workout/domain/entities/workout.dart';
import 'package:esmagador/features/workout/domain/repositories/workout_repository.dart';

class WatchWorkouts {
  final WorkoutRepository _repository;

  const WatchWorkouts(this._repository);

  Stream<Either<WorkoutFailure, List<Workout>>> call() {
    return _repository.watchWorkouts();
  }
}
