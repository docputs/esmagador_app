import 'package:esmagador/features/workout/domain/repositories/workout_repository.dart';
import 'package:esmagador/features/workout/domain/usecases/delete_workout.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/workout_fixture.dart';

class MockWorkoutRepository extends Mock implements WorkoutRepository {}

void main() {
  MockWorkoutRepository mockWorkoutRepository;
  DeleteWorkout usecase;

  setUp(() {
    mockWorkoutRepository = MockWorkoutRepository();
    usecase = DeleteWorkout(mockWorkoutRepository);
  });

  test('should call deleteWorkout() in the repository', () async {
    await usecase(workout);

    verify(mockWorkoutRepository.deleteWorkout(workout));
    verifyNoMoreInteractions(mockWorkoutRepository);
  });
}
