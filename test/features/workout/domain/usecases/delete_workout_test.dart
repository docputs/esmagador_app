import 'package:esmagador/features/workout/domain/repositories/workout_repository.dart';
import 'package:esmagador/features/workout/domain/usecases/delete_workout.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockWorkoutRepository extends Mock implements WorkoutRepository {}

void main() {
  MockWorkoutRepository mockWorkoutRepository;
  DeleteWorkout usecase;

  setUp(() {
    mockWorkoutRepository = MockWorkoutRepository();
    usecase = DeleteWorkout(mockWorkoutRepository);
  });

  test('should call deleteWorkout() in the repository', () async {
    final id = '123';

    await usecase(id);

    verify(mockWorkoutRepository.deleteWorkout(id));
    verifyNoMoreInteractions(mockWorkoutRepository);
  });
}
