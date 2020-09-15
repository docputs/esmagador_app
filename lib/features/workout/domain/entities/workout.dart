import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'exercise.dart';

class Workout extends Equatable {
  final String id;
  final String title;
  final double durationInMinutes;
  final String dayOfWeek;
  final List<Exercise> exercises;
  final DateTime createdAt;

  const Workout({
    @required this.id,
    @required this.title,
    @required this.durationInMinutes,
    @required this.dayOfWeek,
    @required this.exercises,
    @required this.createdAt,
  });

  @override
  List<Object> get props => [
        id,
        title,
        durationInMinutes,
        dayOfWeek,
        exercises,
        createdAt,
      ];
}
