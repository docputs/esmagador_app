import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../../auth/data/repositories/user_repository.dart';
import '../../core/errors/workout_failure.dart';
import '../../domain/entities/workout.dart';
import '../../domain/repositories/workout_repository.dart';
import '../datasources/workout_remote_data_source.dart';

class WorkoutRepositoryImpl implements WorkoutRepository {
  final WorkoutRemoteDataSource remoteDataSource;
  final UserRepository userRepository;

  WorkoutRepositoryImpl({
    @required this.userRepository,
    @required this.remoteDataSource,
  });

  @override
  Future<Either<WorkoutFailure, Unit>> saveWorkout(Workout workout) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<WorkoutFailure, Unit>> deleteWorkout() {
    // TODO: implement deleteWorkout
    throw UnimplementedError();
  }

  @override
  Future<Either<WorkoutFailure, Unit>> editWorkout(Workout workout) {
    // TODO: implement editWorkout
    throw UnimplementedError();
  }

  @override
  Future<Either<WorkoutFailure, List<Workout>>> getWorkoutList() {
    // TODO: implement getWorkoutList
    throw UnimplementedError();
  }
}
