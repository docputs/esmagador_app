import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'exercise.dart';

class UserExercise {
  final Exercise exercise;
  final int sets;
  final List<int> reps;

  UserExercise({
    @required this.exercise,
    @required this.sets,
    @required this.reps,
  });

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is UserExercise &&
        o.exercise == exercise &&
        o.sets == sets &&
        listEquals(o.reps, reps);
  }

  @override
  int get hashCode => exercise.hashCode ^ sets.hashCode ^ reps.hashCode;

  UserExercise copyWith({
    Exercise exercise,
    int sets,
    List<int> reps,
  }) {
    return UserExercise(
      exercise: exercise ?? this.exercise,
      sets: sets ?? this.sets,
      reps: reps ?? this.reps,
    );
  }

  @override
  String toString() =>
      'UserExercise(exercise: $exercise, sets: $sets, reps: $reps)';

  Map<String, dynamic> toMap() {
    return {
      'exercise': exercise?.toMap(),
      'sets': sets,
      'reps': reps,
    };
  }

  factory UserExercise.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return UserExercise(
      exercise: Exercise.fromMap(map['exercise']),
      sets: map['sets'],
      reps: List<int>.from(map['reps']),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserExercise.fromJson(String source) =>
      UserExercise.fromMap(json.decode(source));
}
