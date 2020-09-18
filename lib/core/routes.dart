import 'package:flutter/widgets.dart';

// import '../features/auth/presentation/screens/login/login_screen.dart';
// import '../features/auth/presentation/screens/sign_up/sign_up_screen.dart';
// import '../features/auth/presentation/screens/walkthrough/walkthrough_screen.dart';
import '../features/workout/presentation/screens/workout/create_workout_screen.dart';
import '../features/workout/presentation/screens/workout/workout_screen.dart';

final Map<String, WidgetBuilder> routes = {
  // WalkthroughScreen.routeName: (context) => WalkthroughScreen(),
  // LoginScreen.routeName: (context) => LoginScreen(),
  // SignUpScreen.routeName: (context) => SignUpScreen(),
  WorkoutScreen.routeName: (context) => WorkoutScreen(),
  CreateWorkoutScreen.routeName: (context) => CreateWorkoutScreen(),
};
