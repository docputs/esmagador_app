import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:esmagador/features/workout/domain/entities/exercise.dart';
import 'package:esmagador/features/workout/domain/entities/user_exercise.dart';
import 'package:esmagador/features/workout/presentation/create_workout/bloc/create_workout_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'choose_exercise_event.dart';
part 'choose_exercise_state.dart';
part 'choose_exercise_bloc.freezed.dart';

@injectable
class ChooseExerciseBloc
    extends Bloc<ChooseExerciseEvent, ChooseExerciseState> {
  final CreateWorkoutBloc createWorkoutBloc;

  ChooseExerciseBloc(this.createWorkoutBloc)
      : super(ChooseExerciseState.empty());

  @override
  Stream<ChooseExerciseState> mapEventToState(
    ChooseExerciseEvent event,
  ) async* {
    yield* event.map(
      hasChosenExercise: (e) async* {
        yield ChooseExerciseState.initial(exercise: e.exercise);
      },
      incrementedSets: (e) async* {
        yield state.copyWith(
            userExercise:
                state.userExercise.copyWith(sets: state.userExercise.sets + 1));
      },
      decrementedSets: (e) async* {
        yield state.copyWith(
            userExercise:
                state.userExercise.copyWith(sets: state.userExercise.sets - 1));
      },
      changedMaximumReps: (e) async* {
        yield state.copyWith(
            userExercise: state.userExercise.copyWith(reps: [
          state.userExercise.reps[0],
          e.value,
        ]));
      },
      changedMinimumReps: (e) async* {
        yield state.copyWith(
            userExercise: state.userExercise.copyWith(reps: [
          e.value,
          state.userExercise.reps[1],
        ]));
      },
      submittedExercise: (e) async* {},
      cancelledByUser: (e) async* {},
    );
  }
}
