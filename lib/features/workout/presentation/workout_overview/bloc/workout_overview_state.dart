part of 'workout_overview_bloc.dart';

@freezed
abstract class WorkoutOverviewState with _$WorkoutOverviewState {
  const factory WorkoutOverviewState.initial() = _Initial;
  const factory WorkoutOverviewState.loading() = _Loading;
  const factory WorkoutOverviewState.success(
      {@required List<Workout> workouts}) = Success;
  const factory WorkoutOverviewState.error() = _Error;
}
