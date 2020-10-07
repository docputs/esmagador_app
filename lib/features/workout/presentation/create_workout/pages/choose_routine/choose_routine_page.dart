import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../core/default_button.dart';
import '../../bloc/create_workout_bloc.dart';
import 'controller/choose_routine_controller.dart';
import '../choose_exercises/choose_exercises_page.dart';
import '../components/custom_header.dart';

class ChooseRoutinePage extends StatefulWidget {
  static const routeName = '/choose-routine';

  @override
  _ChooseRoutinePageState createState() => _ChooseRoutinePageState();
}

class _ChooseRoutinePageState extends State<ChooseRoutinePage> {
  final controller = ChooseRoutineController();

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
                  CustomHeader(
                    title: 'Qual(is) dia(s) você fará esse treino?',
                    subtitle: Text('Escolha uma ou mais opções'),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 7,
                      itemBuilder: (context, index) => CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: kPrimaryColor,
                        title: Text(controller.weekdays[index]['title']),
                        value: controller.weekdays[index]['isSelected'],
                        onChanged: (value) {
                          setState(() {
                            controller.weekdays[index]['isSelected'] = value;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            DefaultButton(
              text: 'Avançar',
              handler: controller.convertToSelectedWeekdays().fold(
                () => null,
                (weekdays) {
                  return () {
                    context
                        .bloc<CreateWorkoutBloc>()
                        .add(CreateWorkoutEvent.routineSubmitted(weekdays));
                    Navigator.of(context)
                        .pushNamed(ChooseExercisesPage.routeName);
                  };
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
