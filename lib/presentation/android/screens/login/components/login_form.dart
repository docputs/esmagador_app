import 'package:esmagador/presentation/android/screens/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widgets/default_button.dart';
import '../../../../constants.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key key,
  }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  String _email;
  String _password;

  void signIn() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      context.bloc<LoginBloc>().tryLogin(_email.trim(), _password.trim());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildLoginInput(),
          SizedBox(height: 10),
          buildPasswordInput(),
          DefaultButton(
            text: 'Entrar',
            handler: signIn,
          ),
        ],
      ),
    );
  }

  TextFormField buildLoginInput() {
    return TextFormField(
      autocorrect: false,
      cursorColor: kPrimaryColor,
      enableSuggestions: false,
      keyboardType: TextInputType.emailAddress,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: 'E-mail',
        border: OutlineInputBorder(borderRadius: kBorderRadius),
      ),
      onSaved: (newValue) {
        _email = newValue;
      },
    );
  }

  TextFormField buildPasswordInput() {
    return TextFormField(
      autocorrect: false,
      cursorColor: kPrimaryColor,
      enableSuggestions: false,
      keyboardType: TextInputType.emailAddress,
      maxLines: 1,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Senha',
        border: OutlineInputBorder(borderRadius: kBorderRadius),
      ),
      onSaved: (newValue) {
        _password = newValue;
      },
    );
  }
}
