part of 'choose_exercise_bloc.dart';

@freezed
abstract class ChooseExerciseState with _$ChooseExerciseState {
  const factory ChooseExerciseState({@required UserExercise userExercise}) =
      _ChooseExerciseState;

  factory ChooseExerciseState.initial({@required Exercise exercise}) =>
      ChooseExerciseState(
        userExercise: UserExercise(exercise: exercise, sets: 3, reps: [8, 12]),
      );

  factory ChooseExerciseState.empty() => ChooseExerciseState(
      userExercise: UserExercise(
          exercise: Exercise(
              id: null,
              title: null,
              description: null,
              mainMuscle: null,
              secondaryMuscles: null,
              durationInSeconds: null),
          sets: null,
          reps: null));
}
