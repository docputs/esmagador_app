import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/walkthrough/walkthrough_screen.dart';
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
      home: FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Houve um erro :c'));
          } else {
            return WalkthroughScreen();
          }
        },
      ),
    );
  }
}
