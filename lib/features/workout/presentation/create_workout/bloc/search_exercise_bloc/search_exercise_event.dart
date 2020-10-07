part of 'search_exercise_bloc.dart';

@freezed
abstract class SearchExerciseEvent with _$SearchExerciseEvent {
  const factory SearchExerciseEvent.userTyped({@required String text}) =
      _UserTyped;
}
