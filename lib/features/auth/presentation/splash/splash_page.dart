import 'package:esmagador/core/bottom_navigation_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/size_config.dart';
import '../../../profile/presentation/profile_screen.dart';
import '../auth_bloc.dart';
import '../sign_in/pages/sign_in_page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initializing: (_) {},
          authenticated: (_) {
            Navigator.of(context)
                .pushReplacementNamed(BottomNavigationManager.routeName);
          },
          unauthenticated: (_) {
            Navigator.of(context).pushReplacementNamed(SignInPage.routeName);
          },
        );
      },
      child: Scaffold(body: Center(child: CircularProgressIndicator())),
    );
  }
}
