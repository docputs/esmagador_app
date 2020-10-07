import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/exercise.dart';
import '../../workout_fixtures.dart';

part 'search_exercise_bloc.freezed.dart';
part 'search_exercise_event.dart';
part 'search_exercise_state.dart';

class SearchExerciseBloc
    extends Bloc<SearchExerciseEvent, SearchExerciseState> {
  SearchExerciseBloc() : super(SearchExerciseState.empty());

  @override
  Stream<SearchExerciseState> mapEventToState(
    SearchExerciseEvent event,
  ) async* {
    yield* event.map(
      userTyped: (e) async* {
        final filteredExercises = exercises
            .where((exercise) =>
                exercise.title.toLowerCase().contains(e.text.toLowerCase()))
            .toList();
        yield state.copyWith(exercises: filteredExercises);
      },
    );
  }
}
