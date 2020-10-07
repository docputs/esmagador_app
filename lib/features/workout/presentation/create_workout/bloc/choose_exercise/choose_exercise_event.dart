part of 'choose_exercise_bloc.dart';

@freezed
abstract class ChooseExerciseEvent with _$ChooseExerciseEvent {
  const factory ChooseExerciseEvent.hasChosenExercise(
      {@required Exercise exercise}) = _HasChosenExercise;
  const factory ChooseExerciseEvent.incrementedSets() = _IncrementedSets;
  const factory ChooseExerciseEvent.decrementedSets() = _DecrementedSets;
  const factory ChooseExerciseEvent.changedMaximumReps({@required int value}) =
      _ChangedMaximumReps;
  const factory ChooseExerciseEvent.changedMinimumReps({@required int value}) =
      _ChangedMinimumReps;
  const factory ChooseExerciseEvent.submittedExercise() = _SubmittedExercise;
  const factory ChooseExerciseEvent.cancelledByUser() = _CancelledByUser;
}
