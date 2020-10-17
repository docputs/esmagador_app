import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../auth/domain/repositories/user_repository.dart';
import '../../core/errors/workout_failures.dart';
import '../../domain/entities/workout.dart';
import '../../domain/repositories/workout_repository.dart';
import '../models/workout_model.dart';

@LazySingleton(as: WorkoutRepository)
class FirebaseWorkoutRepository implements WorkoutRepository {
  final FirebaseFirestore firestore;
  final UserRepository userRepository;

  const FirebaseWorkoutRepository({
    @required this.firestore,
    @required this.userRepository,
  })  : assert(firestore != null),
        assert(userRepository != null);

  @override
  Future<Either<WorkoutFailure, Unit>> saveWorkout(Workout workout) async {
    final workoutModel = WorkoutModel.fromEntity(workout);
    final userOption = await userRepository.getCurrentUser();
    return userOption.fold(
      () => left(WorkoutFailure.couldNotSave()),
      (user) async {
        await firestore
            .collection('users/${user.id}/workouts')
            .doc(workoutModel.id)
            .set(workoutModel.toMap());
        return right(unit);
      },
    );
  }

  @override
  Future<Either<WorkoutFailure, Unit>> deleteWorkout(Workout workout) async {
    final userOption = await userRepository.getCurrentUser();
    return userOption.fold(
      () {
        return left(const WorkoutFailure.couldNotDelete());
      },
      (user) async {
        try {
          await firestore
              .collection('users/${user.id}/workouts')
              .doc(workout.id)
              .delete();
          return right(unit);
        } catch (e) {
          print(e);
          return left(const WorkoutFailure.couldNotDelete());
        }
      },
    );
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

  @override
  Stream<Either<WorkoutFailure, List<Workout>>> watchWorkouts() async* {
    final userOption = await userRepository.getCurrentUser();
    yield* userOption.fold(
      () async* {
        yield left(const WorkoutFailure.couldNotFetch());
      },
      (user) async* {
        yield* firestore
            .collection('users/${user.id}/workouts')
            .snapshots()
            .map((snapshot) => right<WorkoutFailure, List<Workout>>(snapshot
                .docs
                .map((doc) => WorkoutModel.fromFirestore(doc))
                .toList()))
            .onErrorReturnWith((error) {
          print(error);
          return left(const WorkoutFailure.couldNotFetch());
        });
      },
    );
  }
}
