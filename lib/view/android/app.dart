import 'package:esmagador/data/models/authenticated_user.dart';
import 'package:esmagador/data/user_repository.dart';
import 'package:esmagador/view/android/page_manager.dart';
import 'package:esmagador/view/android/screens/login/bloc/login_bloc.dart';
import 'package:esmagador/view/android/screens/sign_up/bloc/sign_up_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../size_config.dart';
import 'screens/login/login_screen.dart';
import '../constants.dart';
import '../routes.dart';

class AndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Esmagador',
      theme: ThemeData(
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
      ),
      routes: routes,
      home: FutureBuilder<FirebaseApp>(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done)
            return App();
          else
            return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class App extends StatefulWidget {
  App({
    Key key,
  }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  UserRepository _userRepository;
  Stream<AuthenticatedUser> _stream;

  @override
  void initState() {
    super.initState();
    _userRepository = UserRepository();
    _stream = _userRepository.listenToUserChanges();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SignUpBloc(_userRepository)),
        BlocProvider(create: (context) => LoginBloc(_userRepository)),
      ],
      child: StreamBuilder<AuthenticatedUser>(
        stream: _stream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else {
            if (snapshot.hasData) {
              return PageManager();
            } else {
              return LoginScreen();
            }
          }
        },
      ),
    );
  }
}
