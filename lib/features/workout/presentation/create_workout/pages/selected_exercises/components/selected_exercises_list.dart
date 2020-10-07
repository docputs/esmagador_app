import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../../bloc/create_workout_bloc.dart';

class SelectedExercisesList extends StatelessWidget {
  const SelectedExercisesList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateWorkoutBloc, CreateWorkoutState>(
      builder: (context, state) {
        return ListView.builder(
          itemBuilder: (context, index) => ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 15),
            title: Text(
              state.exercises[index].exercise.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '${state.exercises[index].sets} séries\n${state.exercises[index].reps[0]} - ${state.exercises[index].reps[1]} repetições',
            ),
            trailing: IconButton(
              icon: Icon(FeatherIcons.trash),
              onPressed: () {
                context.bloc<CreateWorkoutBloc>().add(
                    CreateWorkoutEvent.removedExerciseFromList(
                        state.exercises[index]));
              },
            ),
          ),
          itemCount: state.exercises.length,
        );
      },
    );
  }
}
