import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../../core/errors/workout_failures.dart';
import '../../../domain/entities/user_exercise.dart';
import '../../../domain/entities/workout.dart';
import '../../../domain/usecases/save_workout.dart';

part 'create_workout_bloc.freezed.dart';
part 'create_workout_event.dart';
part 'create_workout_state.dart';

@injectable
class CreateWorkoutBloc extends Bloc<CreateWorkoutEvent, CreateWorkoutState> {
  final SaveWorkout saveWorkout;

  CreateWorkoutBloc(this.saveWorkout) : super(CreateWorkoutState.initial());

  @override
  Stream<CreateWorkoutState> mapEventToState(
    CreateWorkoutEvent event,
  ) async* {
    yield* event.map(
      titleSubmitted: (e) async* {
        yield state.copyWith(
          title: e.title,
          saveSuccessOrFailureOption: none(),
        );
      },
      routineSubmitted: (e) async* {
        yield state.copyWith(
          daysOfWeek: e.daysOfWeek,
          saveSuccessOrFailureOption: none(),
        );
      },
      exercisesSubmitted: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          saveSuccessOrFailureOption: none(),
        );

        final saveSuccessOrFailure = await saveWorkout(Workout(
          id: Uuid().v1(),
          title: state.title,
          daysOfWeek: state.daysOfWeek,
          exercises: state.exercises,
          createdAt: DateTime.now(),
        ));

        yield state.copyWith(
          isSubmitting: false,
          saveSuccessOrFailureOption: optionOf(saveSuccessOrFailure),
        );
      },
      addedExerciseToList: (e) async* {
        final newList = [...state.exercises];
        newList.add(e.exercise);
        yield state.copyWith(
          exercises: newList,
          saveSuccessOrFailureOption: none(),
        );
      },
      removedExerciseFromList: (e) async* {
        final newList = [...state.exercises];
        newList.remove(e.exercise);
        yield state.copyWith(
          exercises: newList,
          saveSuccessOrFailureOption: none(),
        );
      },
    );
  }
}
