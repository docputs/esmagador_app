part of 'create_workout_bloc.dart';

@freezed
abstract class CreateWorkoutEvent with _$CreateWorkoutEvent {
  const factory CreateWorkoutEvent.titleSubmitted(String title) =
      _TitleSubmitted;
  const factory CreateWorkoutEvent.routineSubmitted(List<int> daysOfWeek) =
      _RoutineSubmitted;
  const factory CreateWorkoutEvent.exercisesSubmitted() = _ExercisesSubmitted;
  const factory CreateWorkoutEvent.addedExerciseToList(UserExercise exercise) =
      _AddedExerciseToList;
  const factory CreateWorkoutEvent.removedExerciseFromList(
      UserExercise exercise) = _RemovedExerciseFromList;
}
