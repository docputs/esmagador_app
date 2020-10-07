import 'package:flutter/foundation.dart';

import 'user_exercise.dart';

class Workout {
  final String id;
  final String title;
  final List<int> daysOfWeek;
  final List<UserExercise> exercises;
  final DateTime createdAt;

  const Workout({
    @required this.id,
    @required this.title,
    @required this.daysOfWeek,
    @required this.exercises,
    @required this.createdAt,
  });

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Workout &&
        o.id == id &&
        o.title == title &&
        listEquals(o.daysOfWeek, daysOfWeek) &&
        listEquals(o.exercises, exercises) &&
        o.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        daysOfWeek.hashCode ^
        exercises.hashCode ^
        createdAt.hashCode;
  }
}
