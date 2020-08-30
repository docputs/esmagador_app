import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildLoginInput(),
          SizedBox(height: 10),
          buildPasswordInput(),
          SizedBox(height: 20),
          SizedBox(
            height: getProportionateScreenHeight(60),
            width: double.infinity,
            child: RaisedButton(
              shape: RoundedRectangleBorder(borderRadius: kBorderRadius),
              color: kPrimaryColor,
              onPressed: () {
                //TODO:
              },
              child: Text(
                'Entrar',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
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
    );
  }
}
