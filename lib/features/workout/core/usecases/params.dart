import 'package:equatable/equatable.dart';

import '../../domain/entities/workout.dart';

class Params extends Equatable {
  final Workout workout;

  const Params(this.workout);

  @override
  List<Object> get props => [workout];
}
