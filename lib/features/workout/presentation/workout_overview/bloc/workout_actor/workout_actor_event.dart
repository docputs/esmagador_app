part of 'workout_actor_bloc.dart';

@freezed
abstract class WorkoutActorEvent with _$WorkoutActorEvent {
  const factory WorkoutActorEvent.workoutDeleted(Workout workout) = _WorkoutDeleted;
}
