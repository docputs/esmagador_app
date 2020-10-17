import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../routes/router.gr.dart';
import '../../../../service_locator.dart';
import '../../../auth/presentation/auth_bloc.dart';
import '../bloc/profile_actor/profile_actor_bloc.dart';
import '../bloc/profile_bloc.dart';
import 'components/body.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          unauthenticated: (_) {
            ExtendedNavigator.of(context).replace(Routes.signInPage);
          },
        );
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                getIt<ProfileBloc>()..add(const ProfileEvent.started()),
          ),
          BlocProvider(
            create: (context) => getIt<ProfileActorBloc>(),
          ),
        ],
        child: Body(),
      ),
    );
  }
}
