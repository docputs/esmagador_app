import 'package:esmagador/features/workout/domain/repositories/workout_repository.dart';
import 'package:esmagador/features/workout/domain/usecases/edit_workout.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/workout_fixture.dart';

class MockWorkoutRepository extends Mock implements WorkoutRepository {}

void main() {
  MockWorkoutRepository mockWorkoutRepository;
  EditWorkout usecase;

  setUp(() {
    mockWorkoutRepository = MockWorkoutRepository();
    usecase = EditWorkout(mockWorkoutRepository);
  });

  test('deveria chamar editWorkout() no repositório', () async {
    await usecase(workout);

    verify(mockWorkoutRepository.editWorkout(workout));
    verifyNoMoreInteractions(mockWorkoutRepository);
  });
}
