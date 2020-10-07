part of 'create_workout_bloc.dart';

@freezed
abstract class CreateWorkoutState with _$CreateWorkoutState {
  const factory CreateWorkoutState({
    @required String title,
    @required List<int> daysOfWeek,
    @required List<UserExercise> exercises,
    @required bool isSubmitting,
    @required Option<Either<WorkoutFailure, Unit>> saveSuccessOrFailureOption,
  }) = _CreateWorkoutState;

  factory CreateWorkoutState.initial() => CreateWorkoutState(
        title: '',
        daysOfWeek: [],
        exercises: [],
        isSubmitting: false,
        saveSuccessOrFailureOption: none(),
      );
}
