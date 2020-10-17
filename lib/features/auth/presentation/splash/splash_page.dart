import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../core/size_config.dart';
import '../../../../routes/router.gr.dart';
import '../../../walkthrough/usecases/show_walkthrough.dart';
import '../auth_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initializing: (_) {},
          authenticated: (_) {
            ExtendedNavigator.of(context)
                .replace(Routes.bottomNavigationManager);
          },
          unauthenticated: (_) async {
            final usecase =
                Provider.of<ShowWalkthrough>(context, listen: false);
            final showWalkthrough = await usecase();
            if (showWalkthrough) {
              ExtendedNavigator.of(context).replace(Routes.walkthroughPage);
            } else {
              ExtendedNavigator.of(context).replace(Routes.signInPage);
            }
          },
        );
      },
      child: Scaffold(body: Center(child: CircularProgressIndicator())),
    );
  }
}
