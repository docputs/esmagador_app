import 'package:esmagador/core/usecases/params.dart';
import 'package:esmagador/domain/usecases/save_workout.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:esmagador/domain/repositories/workout_repository.dart';

import '../../fixtures/workout_fixture.dart';

class MockWorkoutRepository extends Mock implements WorkoutRepository {}

void main() {
  MockWorkoutRepository mockWorkoutRepository;
  SaveWorkout usecase;

  setUp(() {
    mockWorkoutRepository = MockWorkoutRepository();
    usecase = SaveWorkout(mockWorkoutRepository);
  });

  test('deveria chamar saveWorkout no repositório', () async {
    await usecase(Params(workout));

    verify(mockWorkoutRepository.saveWorkout(workout));
  });
}
