import 'package:flutter/material.dart';

import '../../bloc/workout_overview_bloc.dart';
import 'workout_card.dart';

class WorkoutList extends StatelessWidget {
  final Success state;

  const WorkoutList({
    Key key,
    @required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    final todaysWorkouts = state.workouts
        .where((workout) => workout.daysOfWeek.contains(today.weekday));
    final otherWorkouts = state.workouts
        .where((workout) => !workout.daysOfWeek.contains(today.weekday));

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20),
          SizedBox(
            child: Text('Hoje, ${today.day}/${today.month}'),
            width: double.infinity,
          ),
          ...todaysWorkouts
              .map((workout) => WorkoutCard(workout: workout))
              .toList(),
          const SizedBox(height: 40),
          const SizedBox(
            child: Text('Outros dias'),
            width: double.infinity,
          ),
          const SizedBox(height: 10),
          ...otherWorkouts.map(
            (workout) => WorkoutCard(workout: workout),
          ),
        ],
      ),
    );
  }
}
