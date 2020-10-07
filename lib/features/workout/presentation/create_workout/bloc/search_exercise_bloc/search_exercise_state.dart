part of 'search_exercise_bloc.dart';

@freezed
abstract class SearchExerciseState with _$SearchExerciseState {
  const factory SearchExerciseState({@required List<Exercise> exercises}) =
      _SearchExerciseState;

  factory SearchExerciseState.empty() =>
      SearchExerciseState(exercises: exercises);
}
