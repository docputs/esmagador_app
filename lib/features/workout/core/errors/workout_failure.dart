import 'package:equatable/equatable.dart';

abstract class WorkoutFailure extends Equatable {
  final String message;

  const WorkoutFailure(this.message);

  @override
  String toString() => 'WorkoutFailure($message)';

  @override
  List<Object> get props => [message];
}
