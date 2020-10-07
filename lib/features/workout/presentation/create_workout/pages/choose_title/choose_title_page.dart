import 'package:esmagador/features/workout/presentation/create_workout/pages/components/custom_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../../../../../core/default_button.dart';
import '../../bloc/create_workout_bloc.dart';
import '../choose_routine/choose_routine_page.dart';

class ChooseTitlePage extends StatefulWidget {
  static const routeName = '/choose-title';

  @override
  _ChooseTitlePageState createState() => _ChooseTitlePageState();
}

class _ChooseTitlePageState extends State<ChooseTitlePage> {
  String _workoutTitle = '';

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  CustomHeader(
                    title: 'Dê um nome para o seu treino',
                    subtitle: Text('Ex: Costas e bíceps'),
                  ),
                  Spacer(),
                  TextField(
                    autocorrect: false,
                    onChanged: (value) {
                      setState(() {
                        return _workoutTitle = value;
                      });
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Spacer(flex: 2),
                ],
              ),
            ),
            DefaultButton(
              text: 'Avançar',
              handler: _workoutTitle.isNotEmpty
                  ? () {
                      context.bloc<CreateWorkoutBloc>().add(
                          CreateWorkoutEvent.titleSubmitted(_workoutTitle));
                      Navigator.of(context)
                          .pushNamed(ChooseRoutinePage.routeName);
                    }
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
