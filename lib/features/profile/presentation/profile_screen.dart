import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../auth/presentation/auth_bloc.dart';
import '../../auth/presentation/sign_in/pages/sign_in_page.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          unauthenticated: (_) {
            Navigator.of(context).pushReplacementNamed(SignInPage.routeName);
          },
        );
      },
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Profile'),
            RaisedButton(
              child: Text('LOGOUT'),
              onPressed: () {
                context.bloc<AuthBloc>().add(AuthEvent.signedOut());
              },
            ),
          ],
        ),
      ),
    );
  }
}
