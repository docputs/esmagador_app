part of 'workout_overview_bloc.dart';

@freezed
abstract class WorkoutOverviewEvent with _$WorkoutOverviewEvent {
  const factory WorkoutOverviewEvent.watchAllStarted() = _WatchAllStarted;
}
