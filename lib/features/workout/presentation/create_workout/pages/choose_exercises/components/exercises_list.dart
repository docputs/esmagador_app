import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/choose_exercise/choose_exercise_bloc.dart';
import '../../../bloc/search_exercise_bloc/search_exercise_bloc.dart';
import '../../exercise/exercise_page.dart';

class ExercisesList extends StatelessWidget {
  const ExercisesList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchExerciseBloc, SearchExerciseState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.builder(
            itemCount: state.exercises.length,
            itemBuilder: (context, index) => ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Text(state.exercises[index].title),
              subtitle: Text(state.exercises[index].mainMuscle),
              onTap: () {
                context.bloc<ChooseExerciseBloc>().add(
                    ChooseExerciseEvent.hasChosenExercise(
                        exercise: state.exercises[index]));
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        ExercisePage(exercise: state.exercises[index])));
              },
            ),
          ),
        );
      },
    );
  }
}
