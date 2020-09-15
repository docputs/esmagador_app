import 'package:esmagador/core/usecases/no_params.dart';
import 'package:esmagador/domain/usecases/delete_workout.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:esmagador/domain/repositories/workout_repository.dart';

class MockWorkoutRepository extends Mock implements WorkoutRepository {}

void main() {
  MockWorkoutRepository mockWorkoutRepository;
  DeleteWorkout usecase;

  setUp(() {
    mockWorkoutRepository = MockWorkoutRepository();
    usecase = DeleteWorkout(mockWorkoutRepository);
  });

  test('deveria chamar deleteWorkout() no repositório', () async {
    await usecase(NoParams());

    verify(mockWorkoutRepository.deleteWorkout());
    verifyNoMoreInteractions(mockWorkoutRepository);
  });
}
