import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/entities/workout.dart';
import '../../../../domain/usecases/delete_workout.dart';

part 'workout_actor_bloc.freezed.dart';
part 'workout_actor_event.dart';
part 'workout_actor_state.dart';

@injectable
class WorkoutActorBloc extends Bloc<WorkoutActorEvent, WorkoutActorState> {
  final DeleteWorkout _deleteWorkout;

  WorkoutActorBloc(this._deleteWorkout) : super(_Initial());

  @override
  Stream<WorkoutActorState> mapEventToState(
    WorkoutActorEvent event,
  ) async* {
    yield* event.map(
      workoutDeleted: (e) async* {
        final either = await _deleteWorkout(e.workout);
        yield either.fold(
          (f) => const WorkoutActorState.deleteFailure(),
          (r) => const WorkoutActorState.deleteSuccess(),
        );
      },
    );
  }
}
