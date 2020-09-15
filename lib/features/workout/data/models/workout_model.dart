import 'package:flutter/foundation.dart';

import '../../domain/entities/exercise.dart';
import '../../domain/entities/workout.dart';

class WorkoutModel extends Workout {
  final String id;
  final String title;
  final double durationInMinutes;
  final String dayOfWeek;
  final List<Exercise> exercises;
  final DateTime createdAt;

  WorkoutModel({
    @required this.id,
    @required this.title,
    @required this.durationInMinutes,
    @required this.dayOfWeek,
    @required this.exercises,
    @required this.createdAt,
  }) : super(
          id: id,
          title: title,
          durationInMinutes: durationInMinutes,
          dayOfWeek: dayOfWeek,
          exercises: exercises,
          createdAt: createdAt,
        );

  Map<String, dynamic> toMap() => {
        'id': id,
        'title': title,
        'durationInMinutes': durationInMinutes,
        'dayOfWeek': dayOfWeek,
        'exercises': exercises.map(
          (e) => {
            'id': e.id,
            'title': e.title,
            'description': e.description,
            'mainMuscle': e.mainMuscle,
            'secondaryMuscles': e.secondaryMuscles,
            'durationInSeconds': e.durationInSeconds,
          },
        ),
        'createdAt': createdAt.toIso8601String(),
      };
}
