import 'dart:convert';

import 'package:flutter/foundation.dart';

class Exercise {
  final String id;
  final String title;
  final String description;
  final String mainMuscle;
  final List<String> secondaryMuscles;
  final double durationInSeconds;

  const Exercise({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.mainMuscle,
    @required this.secondaryMuscles,
    @required this.durationInSeconds,
  });

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Exercise &&
        o.id == id &&
        o.title == title &&
        o.description == description &&
        o.mainMuscle == mainMuscle &&
        listEquals(o.secondaryMuscles, secondaryMuscles) &&
        o.durationInSeconds == durationInSeconds;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        mainMuscle.hashCode ^
        secondaryMuscles.hashCode ^
        durationInSeconds.hashCode;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'mainMuscle': mainMuscle,
      'secondaryMuscles': secondaryMuscles,
      'durationInSeconds': durationInSeconds,
    };
  }

  factory Exercise.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Exercise(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      mainMuscle: map['mainMuscle'],
      secondaryMuscles: List<String>.from(map['secondaryMuscles']),
      durationInSeconds: map['durationInSeconds'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Exercise.fromJson(String source) =>
      Exercise.fromMap(json.decode(source));
}
