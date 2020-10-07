import 'package:esmagador/features/workout/domain/entities/exercise.dart';
import 'package:esmagador/features/workout/domain/entities/user_exercise.dart';
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

final userExercises = [
  UserExercise(
    exercise: exercises[0],
    sets: 3,
    reps: [8, 12],
  ),
];

final workoutList = [workout];

final workout = Workout(
  id: '123',
  title: 'test workout',
  daysOfWeek: [1, 2, 4],
  exercises: userExercises,
  createdAt: DateTime(2020, 7, 14),
);
