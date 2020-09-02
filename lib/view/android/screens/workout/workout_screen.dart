import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class WorkoutScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Usuário logado'),
            RaisedButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              child: Text('LOGOUT'),
            ),
          ],
        ),
      ),
    );
  }
}
