import 'package:dartz/dartz.dart';

import '../../core/errors/workout_failure.dart';
import '../entities/workout.dart';

abstract class WorkoutRepository {
  Future<Either<WorkoutFailure, List<Workout>>> getWorkoutList();
  Future<Either<WorkoutFailure, Unit>> saveWorkout(Workout workout);
  Future<Either<WorkoutFailure, Unit>> deleteWorkout();
  Future<Either<WorkoutFailure, Unit>> editWorkout(Workout workout);
}
