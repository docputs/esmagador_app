import 'package:esmagador/data/models/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';
import 'bloc/signup_bloc.dart';
import 'components/body.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/sign-in';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupBloc(FirebaseAuthRepository()),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/arrow-left.svg',
              width: getProportionateScreenWidth(36),
              height: getProportionateScreenHeight(36),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: BlocBuilder<SignupBloc, SignupState>(
          builder: (context, state) {
            if (state is SignupInitial)
              return Body();
            else if (state is SignupSuccessful)
              return Center(
                child: Column(
                  children: [
                    Text('UID: ${state.user.id}'),
                    Text('Email: ${state.user.email}'),
                    Text('Verificou e-mail: ${state.user.emailVerified}'),
                  ],
                ),
              );
            else if (state is SignupError)
              return Center(child: Text(state.errorMessage));
            else
              return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
