import 'package:esmagador/features/auth/presentation/sign_in/bloc/sign_in_bloc.dart';
import 'package:esmagador/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/body.dart';

class SignInPage extends StatelessWidget {
  static const routeName = '/sign-in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context) => sl<SignInBloc>(),
        child: Body(),
      ),
    );
  }
}
