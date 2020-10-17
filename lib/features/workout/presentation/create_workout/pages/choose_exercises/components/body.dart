import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/constants.dart';
import '../../../../../../../core/default_button.dart';
import '../../../../../../../routes/router.gr.dart';
import '../../../bloc/create_workout_bloc.dart';
import '../../components/custom_header.dart';
import 'exercises_list.dart';
import 'search_and_filter_exercise.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateWorkoutBloc, CreateWorkoutState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomHeader(
                        title: 'Escolha seus exercícios',
                        subtitle: Row(
                          children: [
                            Text(
                              '${state.exercises.length} exercícios selecionados',
                            ),
                            Spacer(),
                            FlatButton(
                              onPressed: () {
                                ExtendedNavigator.of(context)
                                    .push(Routes.selectedExercisesPage);
                              },
                              child: Text(
                                'Editar',
                                style: TextStyle(color: kPrimaryColor),
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                      SearchAndFilterExercise(_controller),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: ExercisesList(_controller),
              ),
              DefaultButton(
                text: 'Finalizar criação',
                handler: state.exercises.isEmpty
                    ? null
                    : () {
                        ExtendedNavigator.of(context).push(Routes.loadingPage);
                        context
                            .bloc<CreateWorkoutBloc>()
                            .add(const CreateWorkoutEvent.exercisesSubmitted());
                      },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
