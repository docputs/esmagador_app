import 'package:esmagador/features/workout/presentation/workout_overview/pages/components/workout_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/workout_overview_bloc.dart';

class WorkoutContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutOverviewBloc, WorkoutOverviewState>(
      builder: (context, state) {
        return state.map(
          initial: (_) {
            print('inicio');
            return Text('inicio');
          },
          success: (state) => Expanded(
            child: ListView.builder(
              itemCount: state.workouts.length,
              itemBuilder: (context, index) {
                final workout = state.workouts[index];
                return WorkoutCard(workout: workout);
              },
            ),
          ),
          error: (state) {
            print('erro');
            return Container(
              color: Colors.red,
            );
          },
        );
      },
    );
  }
}
