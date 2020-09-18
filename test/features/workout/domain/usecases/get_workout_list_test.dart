import 'package:dartz/dartz.dart';
import 'package:esmagador/features/workout/core/usecases/no_params.dart';
import 'package:esmagador/features/workout/domain/repositories/workout_repository.dart';
import 'package:esmagador/features/workout/domain/usecases/get_workout_list.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/workout_fixture.dart';

class MockWorkoutRepository extends Mock implements WorkoutRepository {}

void main() {
  MockWorkoutRepository mockWorkoutRepository;
  GetWorkoutList usecase;

  setUp(() {
    mockWorkoutRepository = MockWorkoutRepository();
    usecase = GetWorkoutList(mockWorkoutRepository);
  });

  test('deveria pegar a lista de treinos do banco de dados', () async {
    when(mockWorkoutRepository.getWorkoutList())
        .thenAnswer((_) async => Right(workoutList));

    final result = await usecase(NoParams());

    expect(result, Right(workoutList));
    verify(mockWorkoutRepository.getWorkoutList());
    verifyNoMoreInteractions(mockWorkoutRepository);
  });
}
