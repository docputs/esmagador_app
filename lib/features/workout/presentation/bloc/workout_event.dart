part of 'workout_bloc.dart';

abstract class WorkoutEvent extends Equatable {
  const WorkoutEvent();

  @override
  List<Object> get props => [];
}

class CreateWorkout extends WorkoutEvent {
  final Workout workout;
  const CreateWorkout(this.workout);
}

class DeleteWorkout extends WorkoutEvent {}
