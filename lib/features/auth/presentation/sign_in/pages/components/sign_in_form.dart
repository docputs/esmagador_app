import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../core/default_button.dart';
import '../../bloc/sign_in_bloc.dart';


class SignInForm extends StatefulWidget {
  const SignInForm({
    Key key,
  }) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();

  String _email;
  String _password;

  void signIn() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      context
          .bloc<SignInBloc>()
          .add(SignedIn(email: _email, password: _password));
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
