// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../core/bottom_navigation_manager.dart';
import '../features/auth/presentation/sign_in/pages/sign_in_page.dart';
import '../features/auth/presentation/sign_up/pages/sign_up_screen.dart';
import '../features/auth/presentation/splash/splash_page.dart';
import '../features/search/presentation/search_page.dart';
import '../features/statistics/presentation/statistics_page.dart';
import '../features/walkthrough/presentation/walkthrough_page.dart';
import '../features/workout/domain/entities/exercise.dart';
import '../features/workout/presentation/create_workout/pages/choose_exercises/choose_exercises_page.dart';
import '../features/workout/presentation/create_workout/pages/choose_routine/choose_routine_page.dart';
import '../features/workout/presentation/create_workout/pages/choose_title/choose_title_page.dart';
import '../features/workout/presentation/create_workout/pages/exercise/exercise_page.dart';
import '../features/workout/presentation/create_workout/pages/filter/filter_page.dart';
import '../features/workout/presentation/create_workout/pages/loading/loading_page.dart';
import '../features/workout/presentation/create_workout/pages/selected_exercises/selected_exercises_page.dart';
import '../features/workout/presentation/workout_overview/pages/workout_overview_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String walkthroughPage = '/walkthrough-page';
  static const String signInPage = '/sign-in-page';
  static const String signUpPage = '/sign-up-page';
  static const String bottomNavigationManager = '/bottom-navigation-manager';
  static const String workoutOverviewPage = '/workout-overview-page';
  static const String chooseTitlePage = '/choose-title-page';
  static const String chooseExercisesPage = '/choose-exercises-page';
  static const String statisticsPage = '/statistics-page';
  static const String searchPage = '/search-page';
  static const String exercisePage = '/exercise-page';
  static const String selectedExercisesPage = '/selected-exercises-page';
  static const String chooseRoutinePage = '/choose-routine-page';
  static const String filterPage = '/filter-page';
  static const String loadingPage = '/loading-page';
  static const all = <String>{
    splashPage,
    walkthroughPage,
    signInPage,
    signUpPage,
    bottomNavigationManager,
    workoutOverviewPage,
    chooseTitlePage,
    chooseExercisesPage,
    statisticsPage,
    searchPage,
    exercisePage,
    selectedExercisesPage,
    chooseRoutinePage,
    filterPage,
    loadingPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.walkthroughPage, page: WalkthroughPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.signUpPage, page: SignUpPage),
    RouteDef(Routes.bottomNavigationManager, page: BottomNavigationManager),
    RouteDef(Routes.workoutOverviewPage, page: WorkoutOverviewPage),
    RouteDef(Routes.chooseTitlePage, page: ChooseTitlePage),
    RouteDef(Routes.chooseExercisesPage, page: ChooseExercisesPage),
    RouteDef(Routes.statisticsPage, page: StatisticsPage),
    RouteDef(Routes.searchPage, page: SearchPage),
    RouteDef(Routes.exercisePage, page: ExercisePage),
    RouteDef(Routes.selectedExercisesPage, page: SelectedExercisesPage),
    RouteDef(Routes.chooseRoutinePage, page: ChooseRoutinePage),
    RouteDef(Routes.filterPage, page: FilterPage),
    RouteDef(Routes.loadingPage, page: LoadingPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    WalkthroughPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => WalkthroughPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    SignUpPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpPage(),
        settings: data,
      );
    },
    BottomNavigationManager: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BottomNavigationManager(),
        settings: data,
      );
    },
    WorkoutOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => WorkoutOverviewPage(),
        settings: data,
      );
    },
    ChooseTitlePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ChooseTitlePage(),
        settings: data,
      );
    },
    ChooseExercisesPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ChooseExercisesPage(),
        settings: data,
      );
    },
    StatisticsPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => StatisticsPage(),
        settings: data,
      );
    },
    SearchPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SearchPage(),
        settings: data,
      );
    },
    ExercisePage: (data) {
      final args = data.getArgs<ExercisePageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ExercisePage(
          key: args.key,
          exercise: args.exercise,
        ),
        settings: data,
      );
    },
    SelectedExercisesPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SelectedExercisesPage(),
        settings: data,
      );
    },
    ChooseRoutinePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ChooseRoutinePage(),
        settings: data,
      );
    },
    FilterPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FilterPage(),
        settings: data,
      );
    },
    LoadingPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoadingPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ExercisePage arguments holder class
class ExercisePageArguments {
  final Key key;
  final Exercise exercise;
  ExercisePageArguments({this.key, @required this.exercise});
}
