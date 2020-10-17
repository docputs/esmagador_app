import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../features/auth/presentation/auth_bloc.dart';
import '../features/walkthrough/usecases/show_walkthrough.dart';
import '../features/workout/presentation/create_workout/bloc/choose_exercise/choose_exercise_bloc.dart';
import '../features/workout/presentation/create_workout/bloc/create_workout_bloc.dart';
import '../features/workout/presentation/create_workout/bloc/search_exercise_bloc/search_exercise_bloc.dart';
import '../routes/router.gr.dart' as rt;
import '../service_locator.dart';
import 'constants.dart';
import 'navigation_item.dart';

class AndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider(
          create: (_) => getIt<CreateWorkoutBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<ChooseExerciseBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<SearchExerciseBloc>(),
        ),
      ],
      child: Provider(
        create: (_) => getIt<ShowWalkthrough>(),
        builder: (context, child) => ChangeNotifierProvider(
          create: (_) => NavigationItemProvider(),
          builder: (context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Esmagador',
            theme: theme(),
            builder: ExtendedNavigator.builder(router: rt.Router()),
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
      accentColor: kPrimaryColor,
      primaryColor: kPrimaryColor,
      textTheme: GoogleFonts.poppinsTextTheme().apply(
        displayColor: kTextColor,
        bodyColor: kTextColor,
      ),
      scaffoldBackgroundColor: Colors.white,
      cursorColor: kPrimaryColor,
    );
  }
}
