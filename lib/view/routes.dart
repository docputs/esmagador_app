import 'package:esmagador/view/android/screens/workout/workout_screen.dart';
import 'package:flutter/widgets.dart';

import 'android/screens/login/login_screen.dart';
import 'android/screens/sign_up/sign_up_screen.dart';
import 'android/screens/walkthrough/walkthrough_screen.dart';

final Map<String, WidgetBuilder> routes = {
  WalkthroughScreen.routeName: (context) => WalkthroughScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  WorkoutScreen.routeName: (context) => WorkoutScreen(),
};
