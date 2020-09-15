import 'package:dartz/dartz.dart';

import '../../core/errors/workout_failure.dart';
import '../../core/usecases/no_params.dart';
import '../../core/usecases/usecase.dart';
import '../repositories/workout_repository.dart';

class DeleteWorkout implements UseCase<Unit, NoParams> {
  final WorkoutRepository _repository;

  const DeleteWorkout(this._repository);

  @override
  Future<Either<WorkoutFailure, Unit>> call(NoParams params) {
    return _repository.deleteWorkout();
  }
}
