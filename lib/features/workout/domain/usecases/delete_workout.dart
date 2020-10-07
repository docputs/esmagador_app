import 'package:dartz/dartz.dart';

import '../../core/errors/workout_failures.dart';
import '../../core/usecases/usecase.dart';
import '../repositories/workout_repository.dart';

class DeleteWorkout implements UseCase<Unit, String> {
  final WorkoutRepository _repository;

  const DeleteWorkout(this._repository);

  @override
  Future<Either<WorkoutFailure, Unit>> call(String id) {
    return _repository.deleteWorkout(id);
  }
}
