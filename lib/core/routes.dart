import 'package:flutter/widgets.dart';

import '../features/auth/presentation/sign_in/pages/sign_in_page.dart';
import '../features/auth/presentation/sign_up/pages/sign_up_screen.dart';
import '../features/walkthrough/presentation/walkthrough_page.dart';
import '../features/workout/presentation/create_workout/pages/choose_exercises/choose_exercises_page.dart';
import '../features/workout/presentation/create_workout/pages/choose_routine/choose_routine_page.dart';
import '../features/workout/presentation/create_workout/pages/choose_title/choose_title_page.dart';
import '../features/workout/presentation/create_workout/pages/create_workout_wizard.dart';
import '../features/workout/presentation/create_workout/pages/filter/filter_page.dart';
import '../features/workout/presentation/create_workout/pages/loading/loading_page.dart';
import '../features/workout/presentation/create_workout/pages/selected_exercises/selected_exercises_page.dart';
import '../features/workout/presentation/workout_overview/pages/workout_page.dart';
import 'bottom_navigation_manager.dart';

final Map<String, WidgetBuilder> routes = {
  WalkthroughPage.routeName: (context) => WalkthroughPage(),
  SignInPage.routeName: (context) => SignInPage(),
  SignUpPage.routeName: (context) => SignUpPage(),
  WorkoutOverviewPage.routeName: (context) => WorkoutOverviewPage(),
  CreateWorkoutWizard.routeName: (context) => CreateWorkoutWizard(),
  BottomNavigationManager.routeName: (context) => BottomNavigationManager(),
  ChooseRoutinePage.routeName: (context) => ChooseRoutinePage(),
  ChooseTitlePage.routeName: (context) => ChooseTitlePage(),
  ChooseExercisesPage.routeName: (context) => ChooseExercisesPage(),
  SelectedExercisesPage.routeName: (context) => SelectedExercisesPage(),
  FilterPage.routeName: (context) => FilterPage(),
  LoadingPage.routeName: (context) => LoadingPage(),
};
