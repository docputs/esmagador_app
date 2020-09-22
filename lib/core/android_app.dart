import 'package:esmagador/core/navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../features/auth/presentation/auth_bloc.dart';
import '../features/auth/presentation/splash/splash_page.dart';
import '../injection_container.dart';
import 'constants.dart';
import 'routes.dart';

class AndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => sl<AuthBloc>()..add(AuthEvent.authCheckRequested()),
        ),
      ],
      child: ChangeNotifierProvider(
        create: (_) => NavigationItemProvider(),
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Esmagador',
          theme: theme(),
          routes: routes,
          home: SplashPage(),
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
