import 'package:esmagador/view/android/screens/login/bloc/login_bloc.dart';
import 'package:esmagador/view/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants.dart';
import 'create_account_text.dart';
import 'login_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Entrar',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/Ativo6.png',
              height: getProportionateScreenHeight(150.0),
            ),
            SizedBox(height: 30),
            BlocConsumer<LoginBloc, LoginState>(
              listener: (context, state) {
                if (state is LoginError) {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(content: Text(state.errorMessage)),
                  );
                }
              },
              builder: (context, state) {
                if (state is LoginLoading) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 100),
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return LoginForm();
                }
              },
            ),
            CreateAccountText(),
            SizedBox(height: 20),
            buildCustomDivider(),
            SizedBox(height: 20),
            OutlineButton(
              highlightedBorderColor: kPrimaryColor,
              textColor: kPrimaryColor,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              borderSide: BorderSide(color: kPrimaryColor),
              child: Text(
                'Entrar com o Google',
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Row buildCustomDivider() {
    final Expanded container = Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        height: 1,
        color: Colors.grey[400],
      ),
    );

    return Row(
      children: [
        Spacer(),
        container,
        Text('OU', style: TextStyle(color: Colors.grey[400])),
        container,
        Spacer(),
      ],
    );
  }
}
