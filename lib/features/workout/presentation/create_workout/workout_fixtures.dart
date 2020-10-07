import 'package:esmagador/features/workout/domain/entities/exercise.dart';

const loremIpsum =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed dolor a libero imperdiet pulvinar ut id lorem. Donec quis magna tincidunt, pellentesque urna a, volutpat arcu. Maecenas dignissim dolor eget lectus eleifend, id lacinia leo ullamcorper. Vivamus posuere finibus auctor. Nulla urna ligula, tempor eu ultricies eu, consequat ut turpis. Nam gravida hendrerit libero, sit amet tempor tortor. Suspendisse ultrices quis nisl et posuere. Aliquam eget suscipit erat. Vestibulum tincidunt interdum fringilla. Proin et mauris sed nibh bibendum mattis. Aliquam venenatis gravida leo non mattis. Nam scelerisque accumsan laoreet. In ultrices elementum pharetra. Integer quis vestibulum lacus. In nec quam id eros consequat gravida.';

const List<Exercise> exercises = [
  Exercise(
    id: '1',
    title: 'Supino reto com barra',
    description: loremIpsum,
    mainMuscle: 'Peitoral',
    secondaryMuscles: ['Ombros', 'Tríceps'],
    durationInSeconds: 10,
  ),
  Exercise(
    id: '2',
    title: 'Supino inclinado com barra',
    description: loremIpsum,
    mainMuscle: 'Peitoral',
    secondaryMuscles: ['Ombros', 'Tríceps'],
    durationInSeconds: 15,
  ),
  Exercise(
    id: '3',
    title: 'Elevação lateral',
    description: loremIpsum,
    mainMuscle: 'Ombros',
    secondaryMuscles: [],
    durationInSeconds: 10,
  ),
  Exercise(
    id: '4',
    title: 'Elevação frontal',
    description: loremIpsum,
    mainMuscle: 'Ombros',
    secondaryMuscles: [],
    durationInSeconds: 10,
  ),
  Exercise(
    id: '5',
    title: 'Rosca alternada',
    description: loremIpsum,
    mainMuscle: 'Bíceps',
    secondaryMuscles: [],
    durationInSeconds: 10,
  ),
  Exercise(
    id: '6',
    title: 'Agachamento livre',
    description: loremIpsum,
    mainMuscle: 'Pernas',
    secondaryMuscles: [],
    durationInSeconds: 10,
  ),
  Exercise(
    id: '7',
    title: 'Legpress 45 graus',
    description: loremIpsum,
    mainMuscle: 'Pernas',
    secondaryMuscles: [],
    durationInSeconds: 10,
  ),
];
