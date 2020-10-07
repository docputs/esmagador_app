import 'package:dartz/dartz.dart';
import 'package:esmagador/features/workout/core/errors/workout_failures.dart';
import 'package:esmagador/features/workout/domain/entities/exercise.dart';
import 'package:esmagador/features/workout/domain/usecases/save_workout.dart';
import 'package:esmagador/features/workout/presentation/create_workout/bloc/create_workout_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:bloc_test/bloc_test.dart';

import '../../../fixtures/workout_fixture.dart';

class MockSaveWorkout extends Mock implements SaveWorkout {}

void main() {
  MockSaveWorkout mockSaveWorkout;
  CreateWorkoutBloc bloc;

  setUp(() {
    mockSaveWorkout = MockSaveWorkout();
    bloc = CreateWorkoutBloc(mockSaveWorkout);
  });

  final exercise = Exercise(
    id: '123',
    title: 'teste',
    description: 'teste',
    mainMuscle: 'teste',
    secondaryMuscles: ['teste'],
    durationInSeconds: 10,
  );

  blocTest(
    'should store the title when title is submitted',
    build: () {
      return bloc;
    },
    act: (bloc) => bloc.add(CreateWorkoutEvent.titleSubmitted('Treino teste')),
    expect: [
      CreateWorkoutState(
          title: 'Treino teste',
          daysOfWeek: [],
          exercises: [],
          isSubmitting: false,
          saveSuccessOrFailureOption: none()),
    ],
  );

  blocTest(
    'should store the routine when routine is submitted',
    build: () {
      return bloc;
    },
    act: (bloc) => bloc.add(CreateWorkoutEvent.routineSubmitted([1, 2, 4])),
    expect: [
      CreateWorkoutState(
          title: '',
          daysOfWeek: [1, 2, 4],
          exercises: [],
          isSubmitting: false,
          saveSuccessOrFailureOption: none()),
    ],
  );

  blocTest(
    'should emit proper states when exercises are submitted successfully ',
    build: () {
      when(mockSaveWorkout.call(any)).thenAnswer((_) async => right(unit));
      return bloc;
    },
    act: (bloc) => bloc.add(CreateWorkoutEvent.exercisesSubmitted()),
    expect: [
      CreateWorkoutState(
        title: '',
        daysOfWeek: [],
        exercises: [],
        isSubmitting: true,
        saveSuccessOrFailureOption: none(),
      ),
      CreateWorkoutState(
        title: '',
        daysOfWeek: [],
        exercises: userExercises,
        isSubmitting: false,
        saveSuccessOrFailureOption: some(right(unit)),
      ),
    ],
  );

  blocTest(
    'should emit Failure when exercises are not submitted',
    build: () {
      when(mockSaveWorkout.call(any))
          .thenAnswer((_) async => left(WorkoutFailure.couldNotSave()));
      return bloc;
    },
    act: (bloc) => bloc.add(CreateWorkoutEvent.exercisesSubmitted()),
    expect: [
      CreateWorkoutState(
        title: '',
        daysOfWeek: [],
        exercises: [],
        isSubmitting: true,
        saveSuccessOrFailureOption: none(),
      ),
      CreateWorkoutState(
        title: '',
        daysOfWeek: [],
        exercises: userExercises,
        isSubmitting: false,
        saveSuccessOrFailureOption: some(left(WorkoutFailure.couldNotSave())),
      ),
    ],
  );
}
