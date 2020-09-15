import '../models/workout_model.dart';

abstract class WorkoutRemoteDataSource {
  Future<List<WorkoutModel>> getWorkoutList();
  Future<void> saveWorkout();
  Future<void> deleteWorkout();
  Future<void> editWorkout();
}

class FirebaseRemoteDataSource implements WorkoutRemoteDataSource {
  @override
  Future<List<WorkoutModel>> getWorkoutList() {
    // TODO: implement getWorkoutList
    throw UnimplementedError();
  }

  @override
  Future<void> deleteWorkout() {
    // TODO: implement deleteWorkout
    throw UnimplementedError();
  }

  @override
  Future<void> editWorkout() {
    // TODO: implement editWorkout
    throw UnimplementedError();
  }

  @override
  Future<void> saveWorkout() {
    // TODO: implement saveWorkout
    throw UnimplementedError();
  }
}
