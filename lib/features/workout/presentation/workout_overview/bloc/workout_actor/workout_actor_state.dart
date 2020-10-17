part of 'workout_actor_bloc.dart';

@freezed
abstract class WorkoutActorState with _$WorkoutActorState {
  const factory WorkoutActorState.initial() = _Initial;
  const factory WorkoutActorState.actionInProgress() = _ActionInProgress;
  const factory WorkoutActorState.deleteSuccess() = _DeleteSuccess;
  const factory WorkoutActorState.deleteFailure() = _DeleteFailure;
}
