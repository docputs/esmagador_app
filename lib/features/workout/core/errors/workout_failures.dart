import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_failures.freezed.dart';

@freezed
abstract class WorkoutFailure with _$WorkoutFailure {
  const factory WorkoutFailure.couldNotSave() = _CouldNotSave;
  const factory WorkoutFailure.couldNotDelete() = _CouldNotDelete;
  const factory WorkoutFailure.couldNotEdit() = _CouldNotEdit;
  const factory WorkoutFailure.couldNotFetch() = _CouldNotFetch;
}
