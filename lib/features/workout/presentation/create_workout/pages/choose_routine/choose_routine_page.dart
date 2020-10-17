import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../core/default_button.dart';
import '../../../../../../routes/router.gr.dart';
import '../../bloc/create_workout_bloc.dart';
import '../components/custom_header.dart';
import 'controller/choose_routine_controller.dart';

class ChooseRoutinePage extends StatefulWidget {
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
          onPressed: () => ExtendedNavigator.of(context).pop(),
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
                      physics: BouncingScrollPhysics(),
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        final weekday = controller.weekdays[index];
                        return CheckboxListTile(
                          contentPadding: const EdgeInsets.all(0),
                          activeColor: kPrimaryColor,
                          title: Text(weekday['title']),
                          value: weekday['isSelected'],
                          onChanged: (value) {
                            setState(() {
                              weekday['isSelected'] = value;
                            });
                          },
                        );
                      },
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
                    ExtendedNavigator.of(context)
                        .push(Routes.chooseExercisesPage);
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
