import 'package:esmagador/core/constants.dart';
import 'package:esmagador/features/auth/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:esmagador/core/default_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  String _displayName;
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildNameInput(),
          SizedBox(height: 10),
          buildEmailInput(),
          SizedBox(height: 10),
          buildPasswordInput(),
          SizedBox(height: 10),
          buildConfirmPasswordInput(),
          DefaultButton(
            text: 'Criar conta',
            handler: () {
              if (_formKey.currentState.validate()) {
                context.bloc<SignUpBloc>().add(SignUpUserEvent(
                    displayName: _displayName,
                    email: _email,
                    password: _password));
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildNameInput() {
    return TextFormField(
      autocorrect: false,
      cursorColor: kPrimaryColor,
      enableSuggestions: false,
      keyboardType: TextInputType.name,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: 'Seu nome',
        border: OutlineInputBorder(borderRadius: kBorderRadius),
      ),
      onChanged: (value) {
        _displayName = value;
      },
    );
  }

  TextFormField buildEmailInput() {
    return TextFormField(
      autocorrect: false,
      cursorColor: kPrimaryColor,
      enableSuggestions: false,
      keyboardType: TextInputType.emailAddress,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: 'Seu email',
        border: OutlineInputBorder(borderRadius: kBorderRadius),
      ),
      validator: (value) {
        if (value.isEmpty) return 'Campo obrigatório';
        if (!value.contains('@')) return 'Insira um email válido';
        return null;
      },
      onChanged: (value) {
        _email = value;
      },
    );
  }

  TextFormField buildPasswordInput() {
    return TextFormField(
      autocorrect: false,
      cursorColor: kPrimaryColor,
      enableSuggestions: false,
      keyboardType: TextInputType.name,
      obscureText: true,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: 'Sua senha',
        border: OutlineInputBorder(borderRadius: kBorderRadius),
      ),
      onChanged: (value) {
        _password = value;
      },
    );
  }

  TextFormField buildConfirmPasswordInput() {
    return TextFormField(
      autocorrect: false,
      cursorColor: kPrimaryColor,
      enableSuggestions: false,
      keyboardType: TextInputType.name,
      obscureText: true,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: 'Confirme sua senha',
        border: OutlineInputBorder(borderRadius: kBorderRadius),
      ),
      validator: (value) {
        if (value.isEmpty)
          return 'Campo obrigatório';
        else if (value != _password) return 'Senhas não conferem';
        return null;
      },
    );
  }
}
