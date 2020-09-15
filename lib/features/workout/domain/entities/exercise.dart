import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Exercise extends Equatable {
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
  List<Object> get props => [
        id,
        title,
        description,
        mainMuscle,
        secondaryMuscles,
        durationInSeconds,
      ];
}
