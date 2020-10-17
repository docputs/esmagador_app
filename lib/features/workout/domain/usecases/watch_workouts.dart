import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/workout_failures.dart';
import '../entities/workout.dart';
import '../repositories/workout_repository.dart';

@lazySingleton
class WatchWorkouts {
  final WorkoutRepository _repository;

  const WatchWorkouts(this._repository);

  Stream<Either<WorkoutFailure, List<Workout>>> call() {
    return _repository.watchWorkouts();
  }
}
