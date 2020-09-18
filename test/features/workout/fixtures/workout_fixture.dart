import 'package:esmagador/features/workout/domain/entities/exercise.dart';
import 'package:esmagador/features/workout/domain/entities/workout.dart';

final exercises = [
  Exercise(
    id: '129',
    title: 'supino reto',
    mainMuscle: 'peitoral',
    secondaryMuscles: ['triceps', 'ombros'],
    description: 'empurre a barra para cima',
    durationInSeconds: 60,
  ),
];

final workoutList = [workout];

final workout = Workout(
  id: '1',
  title: 'test workout',
  durationInMinutes: 20.0,
  dayOfWeek: 'quarta-feira',
  exercises: exercises,
  createdAt: DateTime(2020, 7, 14),
);
