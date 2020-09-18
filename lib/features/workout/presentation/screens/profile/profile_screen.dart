import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Profile'),
          RaisedButton(
            child: Text('LOGOUT'),
            onPressed: () => FirebaseAuth.instance.signOut(),
          )
        ],
      ),
    );
  }
}
