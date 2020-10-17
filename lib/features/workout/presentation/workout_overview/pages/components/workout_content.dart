import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/workout_overview_bloc.dart';
import 'workout_list.dart';

class WorkoutContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutOverviewBloc, WorkoutOverviewState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loading: (_) => const Center(child: CircularProgressIndicator()),
          success: (state) => state.workouts.isEmpty
              ? Center(child: Text('Nenhum treino encontrado'))
              : WorkoutList(state: state),
          error: (state) => Container(color: Colors.red),
        );
      },
    );
  }
}
