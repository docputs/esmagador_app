import 'package:dartz/dartz.dart';

import '../../core/errors/workout_failures.dart';
import '../entities/workout.dart';

abstract class WorkoutRepository {
  Stream<Either<WorkoutFailure, List<Workout>>> watchWorkouts();
  Future<Either<WorkoutFailure, List<Workout>>> getWorkoutList();
  Future<Either<WorkoutFailure, Unit>> saveWorkout(Workout workout);
  Future<Either<WorkoutFailure, Unit>> deleteWorkout(String id);
  Future<Either<WorkoutFailure, Unit>> editWorkout(Workout workout);
}
