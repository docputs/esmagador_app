import 'package:esmagador/features/profile/presentation/profile_screen.dart';
import 'package:esmagador/core/bottom_navigation_manager.dart';
import 'package:flutter/widgets.dart';

import '../features/auth/presentation/sign_in/pages/sign_in_page.dart';
import '../features/auth/presentation/sign_up/pages/sign_up_screen.dart';
import '../features/workout/presentation/pages/create_workout_screen.dart';
import '../features/workout/presentation/pages/workout_page.dart';

final Map<String, WidgetBuilder> routes = {
  // WalkthroughScreen.routeName: (context) => WalkthroughScreen(),
  SignInPage.routeName: (context) => SignInPage(),
  SignUpPage.routeName: (context) => SignUpPage(),
  WorkoutPage.routeName: (context) => WorkoutPage(),
  CreateWorkoutScreen.routeName: (context) => CreateWorkoutScreen(),
  BottomNavigationManager.routeName: (context) => BottomNavigationManager(),
};
