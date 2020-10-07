part of 'workout_overview_bloc.dart';

@freezed
abstract class WorkoutOverviewState with _$WorkoutOverviewState {
  factory WorkoutOverviewState.initial() = _Initial;
  const factory WorkoutOverviewState.success(
      {@required List<Workout> workouts}) = _Success;
  const factory WorkoutOverviewState.error() = _Error;
}
