import 'package:esmagador/features/workout/presentation/create_workout/bloc/choose_exercise/choose_exercise_bloc.dart';
import 'package:esmagador/features/workout/presentation/workout_overview/bloc/workout_overview_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../features/auth/presentation/auth_bloc.dart';
import '../features/auth/presentation/splash/splash_page.dart';
import '../features/walkthrough/usecases/show_walkthrough.dart';
import '../features/workout/presentation/create_workout/bloc/create_workout_bloc.dart';
import '../features/workout/presentation/create_workout/bloc/search_exercise_bloc/search_exercise_bloc.dart';
import '../injection_container.dart';
import 'constants.dart';
import 'navigation_item.dart';
import 'routes.dart';

class AndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => sl<AuthBloc>()..add(AuthEvent.authCheckRequested()),
        ),
        BlocProvider(
          create: (_) => sl<CreateWorkoutBloc>(),
        ),
        BlocProvider(
          create: (_) => sl<SearchExerciseBloc>(),
        ),
        BlocProvider(
          create: (_) => sl<ChooseExerciseBloc>(),
        ),
      ],
      child: ChangeNotifierProvider(
        create: (_) => NavigationItemProvider(),
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Esmagador',
          theme: theme(),
          routes: routes,
          home: Provider(
            create: (_) => sl<ShowWalkthrough>(),
            builder: (_, __) => SplashPage(),
          ),
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
