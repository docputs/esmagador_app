import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../workout/core/errors/workout_failures.dart';

@lazySingleton
class ChangeProfilePicture {
  Future<Either<WorkoutFailure, Unit>> call() {
    // TODO: implement call
    throw UnimplementedError();
  }
}
