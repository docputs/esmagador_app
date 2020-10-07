import 'package:esmagador/features/walkthrough/usecases/show_walkthrough.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../core/bottom_navigation_manager.dart';
import '../../../../core/size_config.dart';
import '../../../walkthrough/presentation/walkthrough_page.dart';
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
          unauthenticated: (_) async {
            final usecase =
                Provider.of<ShowWalkthrough>(context, listen: false);
            final showWalkthrough = await usecase();
            if (showWalkthrough) {
              Navigator.of(context)
                  .pushReplacementNamed(WalkthroughPage.routeName);
            } else {
              Navigator.of(context).pushReplacementNamed(SignInPage.routeName);
            }
          },
        );
      },
      child: Scaffold(body: Center(child: CircularProgressIndicator())),
    );
  }
}
