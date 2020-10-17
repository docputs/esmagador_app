import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../routes/router.gr.dart';
import '../../../bloc/choose_exercise/choose_exercise_bloc.dart';
import '../../../bloc/search_exercise_bloc/search_exercise_bloc.dart';

class ExercisesList extends StatelessWidget {
  final TextEditingController _controller;

  const ExercisesList(
    this._controller, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchExerciseBloc, SearchExerciseState>(
      builder: (context, state) => ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: state.exercises.length,
        itemBuilder: (context, index) {
          final exercise = state.exercises[index];

          return ListTile(
            contentPadding: const EdgeInsets.all(0),
            title: Text(exercise.title),
            subtitle: Text(
              exercise.mainMuscle,
              style: TextStyle(color: Colors.grey.shade600),
            ),
            onTap: () {
              context.bloc<ChooseExerciseBloc>().add(
                  ChooseExerciseEvent.hasChosenExercise(exercise: exercise));
              ExtendedNavigator.of(context).push(Routes.exercisePage,
                  arguments: ExercisePageArguments(exercise: exercise));
              _controller.clear();
            },
          );
        },
      ),
    );
  }
}
