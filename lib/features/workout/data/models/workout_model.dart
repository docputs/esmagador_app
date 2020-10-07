import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import '../../domain/entities/user_exercise.dart';
import '../../domain/entities/workout.dart';

class WorkoutModel extends Workout {
  final String id;
  final String title;
  final List<int> daysOfWeek;
  final List<UserExercise> exercises;
  final DateTime createdAt;

  WorkoutModel({
    @required this.id,
    @required this.title,
    @required this.daysOfWeek,
    @required this.exercises,
    @required this.createdAt,
  }) : super(
          id: id,
          title: title,
          daysOfWeek: daysOfWeek,
          exercises: exercises,
          createdAt: createdAt,
        );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'daysOfWeek': daysOfWeek,
      'exercises': exercises?.map((x) => x?.toMap())?.toList(),
      'createdAt': createdAt?.millisecondsSinceEpoch,
    };
  }

  factory WorkoutModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return WorkoutModel(
      id: map['id'],
      title: map['title'],
      daysOfWeek: List<int>.from(map['daysOfWeek']),
      exercises: List<UserExercise>.from(
          map['exercises']?.map((x) => UserExercise.fromMap(x))),
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt']),
    );
  }

  factory WorkoutModel.fromEntity(Workout workout) {
    return WorkoutModel(
      id: workout.id,
      title: workout.title,
      daysOfWeek: workout.daysOfWeek,
      exercises: workout.exercises,
      createdAt: workout.createdAt,
    );
  }

  factory WorkoutModel.fromFirestore(DocumentSnapshot doc) {
    return WorkoutModel.fromMap(doc.data()).copyWith(id: doc.id);
  }

  Workout toDomain() {
    return Workout(
      id: id,
      title: title,
      daysOfWeek: daysOfWeek,
      exercises: exercises,
      createdAt: createdAt,
    );
  }

  String toJson() => json.encode(toMap());

  factory WorkoutModel.fromJson(String source) =>
      WorkoutModel.fromMap(json.decode(source));

  WorkoutModel copyWith({
    String id,
    String title,
    List<int> daysOfWeek,
    List<UserExercise> exercises,
    DateTime createdAt,
  }) {
    return WorkoutModel(
      id: id ?? this.id,
      title: title ?? this.title,
      daysOfWeek: daysOfWeek ?? this.daysOfWeek,
      exercises: exercises ?? this.exercises,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
