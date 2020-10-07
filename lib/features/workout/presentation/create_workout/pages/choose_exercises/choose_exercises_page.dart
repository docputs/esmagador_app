import 'package:esmagador/features/workout/presentation/create_workout/pages/loading/loading_page.dart';
import 'package:esmagador/features/workout/presentation/create_workout/pages/selected_exercises/selected_exercises_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../core/default_button.dart';
import '../../bloc/create_workout_bloc.dart';
import '../components/custom_header.dart';
import 'components/exercises_list.dart';
import 'components/search_and_filter_exercise.dart';

class ChooseExercisesPage extends StatelessWidget {
  static const routeName = '/choose-exercises';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  BlocBuilder<CreateWorkoutBloc, CreateWorkoutState>(
                    builder: (context, state) {
                      return CustomHeader(
                        title: 'Escolha seus exercícios',
                        subtitle: Row(
                          children: [
                            Text(
                              '${state.exercises.length} exercícios selecionados',
                            ),
                            Spacer(),
                            FlatButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(SelectedExercisesPage.routeName);
                              },
                              child: Text(
                                'Editar',
                                style: TextStyle(color: kPrimaryColor),
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      );
                    },
                  ),
                  SearchAndFilterExercise(),
                  ExercisesList(),
                ],
              ),
            ),
            DefaultButton(
              text: 'Avançar',
              handler: () {
                Navigator.of(context).pushNamed(LoadingPage.routeName);
                context
                    .bloc<CreateWorkoutBloc>()
                    .add(CreateWorkoutEvent.exercisesSubmitted());
              },
            ),
          ],
        ),
      ),
    );
  }
}
