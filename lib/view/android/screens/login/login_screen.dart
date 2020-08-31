import 'package:esmagador/data/models/user_repository.dart';
import 'package:esmagador/view/android/screens/home/home_screen.dart';
import 'package:esmagador/view/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './components/body.dart';
import 'bloc/login_bloc.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(FirebaseAuthRepository()),
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
        body: BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
          if (state is LoginInitial)
            return Body();
          else if (state is LoginLoading)
            return Center(child: CircularProgressIndicator());
          else if (state is LoginError)
            return Center(child: Text('Houve um erro :c'));
          else
            return HomeScreen();
        }),
      ),
    );
  }
}
