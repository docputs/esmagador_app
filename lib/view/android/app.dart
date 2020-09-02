import 'package:esmagador/view/android/page_manager.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
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
            return TryAuthentication();
          else
            return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class TryAuthentication extends StatelessWidget {
  TryAuthentication({
    Key key,
  }) : super(key: key);

  final stream = FirebaseAuth.instance.userChanges();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return StreamBuilder<User>(
      stream: stream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        } else {
          if (snapshot.data == null) {
            return LoginScreen();
          } else {
            return PageManager();
          }
        }
      },
    );
  }
}
