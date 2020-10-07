import 'package:esmagador/features/workout/domain/entities/exercise.dart';
import 'package:esmagador/features/workout/presentation/create_workout/bloc/choose_exercise/choose_exercise_bloc.dart';
import 'package:esmagador/features/workout/presentation/create_workout/bloc/create_workout_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/default_button.dart';
import '../components/exercise_content.dart';

class ExercisePage extends StatelessWidget {
  final Exercise exercise;

  const ExercisePage({Key key, @required this.exercise}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            FeatherIcons.arrowLeft,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  height: 250,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ExerciseContent(exercise: exercise),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: DefaultButton(
              text: 'Adicionar exercício',
              handler: () {
                final state = context.bloc<ChooseExerciseBloc>().state;
                context.bloc<CreateWorkoutBloc>().add(
                    CreateWorkoutEvent.addedExerciseToList(state.userExercise));
                Navigator.of(context).pop();
                print('SUBMETIDO: ${state.userExercise}');
              },
            ),
          ),
        ],
      ),
    );
  }
}
