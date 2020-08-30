import 'package:flutter/widgets.dart';

import 'android/screens/login/login_screen.dart';
import 'android/screens/walkthrough/walkthrough_screen.dart';

final Map<String, WidgetBuilder> routes = {
  WalkthroughScreen.routeName: (context) => WalkthroughScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
};
