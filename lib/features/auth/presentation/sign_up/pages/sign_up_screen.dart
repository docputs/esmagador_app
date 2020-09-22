import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../injection_container.dart';
import '../bloc/sign_up_bloc.dart';
import 'components/body.dart';

class SignUpPage extends StatelessWidget {
  static const routeName = '/sign-up';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SignUpBloc>(),
      child: Scaffold(
        appBar: AppBar(),
        body: Body(),
      ),
    );
  }
}
