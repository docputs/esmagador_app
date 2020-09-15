import 'package:dartz/dartz.dart';

import '../../core/errors/workout_failure.dart';
import '../../core/usecases/params.dart';
import '../../core/usecases/usecase.dart';
import '../repositories/workout_repository.dart';

class EditWorkout implements UseCase<Unit, Params> {
  final WorkoutRepository _repository;

  const EditWorkout(this._repository);

  @override
  Future<Either<WorkoutFailure, Unit>> call(Params params) async {
    return await _repository.editWorkout(params.workout);
  }
}

