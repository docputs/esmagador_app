import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../../../../core/size_config.dart';
import '../../../../../injection_container.dart';
import '../../create_workout/pages/create_workout_wizard.dart';
import '../bloc/workout_overview_bloc.dart';
import 'components/workout_content.dart';

class WorkoutOverviewPage extends StatelessWidget {
  static const routeName = '/workout';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 6,
                child: Text(
                  'Meus treinos',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(),
              IconButton(
                icon: Icon(FeatherIcons.edit),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(FeatherIcons.plus),
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(CreateWorkoutWizard.routeName);
                },
              ),
            ],
          ),
          BlocProvider(
            create: (_) => sl<WorkoutOverviewBloc>()
              ..add(const WorkoutOverviewEvent.watchAllStarted()),
            child: WorkoutContent(),
          ),
        ],
      ),
    );
  }
}
