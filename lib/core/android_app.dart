import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import '../features/auth/presentation/blocs/sign_in_bloc/sign_in_bloc.dart';
import '../features/workout/presentation/navigation_item.dart';
import '../injection_container.dart';
import 'constants.dart';
import 'routes.dart';
import 'size_config.dart';

class AndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavigationItemProvider(),
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => sl<AuthBloc>()..add(AuthAppStarted()),
          ),
          BlocProvider(
            create: (context) => sl<SignInBloc>(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Esmagador',
          theme: theme(),
          routes: routes,
          home: AppWidget(),
        ),
      ),
    );
  }

  ThemeData theme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: Colors.white,
      ),
      primaryColor: kPrimaryColor,
      textTheme: GoogleFonts.poppinsTextTheme().apply(
        displayColor: kTextColor,
        bodyColor: kTextColor,
      ),
      scaffoldBackgroundColor: Colors.white,
    );
  }
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is AuthInitializing) {
            return Center(child: Text('inicializando'));
          } else if (state is AuthAuthenticated) {
            return Center(
              child: Column(
                children: [
                  Text('Autenticado'),
                  RaisedButton(
                    child: Text('LOGOUT'),
                    onPressed: () =>
                        context.bloc<AuthBloc>().add(AuthLoggedOut()),
                  ),
                ],
              ),
            );
          } else {
            return Center(
              child: Column(
                children: [
                  Text('Não autenticado'),
                  RaisedButton(
                    child: Text('LOGIN'),
                    onPressed: () => context.bloc<SignInBloc>().add(
                          SignedIn(
                            email: 'jvsoares_@hotmail.com',
                            password: 'Farmausp*2017',
                          ),
                        ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
