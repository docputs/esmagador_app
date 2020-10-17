import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../core/default_button.dart';
import '../../../../../../routes/router.gr.dart';
import '../../../../../../service_locator.dart';
import '../../../../core/util/validators.dart';
import '../../../auth_bloc.dart';
import '../../bloc/sign_in_bloc.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  FocusNode _emailFocusNode;
  FocusNode _passwordFocusNode;

  @override
  void initState() {
    super.initState();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (f) => Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  f.maybeMap(
                    orElse: () {},
                    invalidEmailAndPasswordCombination: (_) =>
                        'Email e/ou senha inválidos',
                    serverFailure: (_) => 'Erro no servidor',
                    unknownFailure: (_) => 'Erro desconhecido',
                    cancelledByUser: (_) => 'Cancelado pelo usuário',
                  ),
                ),
              ),
            ),
            (_) {
              ExtendedNavigator.of(context)
                  .replace(Routes.bottomNavigationManager);
              context.bloc<AuthBloc>().add(AuthEvent.authCheckRequested());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          child: Column(
            children: [
              buildEmailInput(context, state),
              const SizedBox(height: 10),
              buildPasswordInput(context, state),
              DefaultButton(
                text: 'Entrar',
                handler: state.isSubmitting
                    ? null
                    : () {
                        context
                            .bloc<SignInBloc>()
                            .add(const SignInEvent.signInPressed());
                      },
              ),
            ],
          ),
        );
      },
    );
  }

  TextFormField buildEmailInput(BuildContext context, SignInState state) {
    return TextFormField(
      focusNode: _emailFocusNode,
      autovalidate: state.showErrorMessages,
      autocorrect: false,
      cursorColor: kPrimaryColor,
      enableSuggestions: false,
      keyboardType: TextInputType.emailAddress,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: 'E-mail',
        border: OutlineInputBorder(borderRadius: kBorderRadius),
      ),
      validator: (value) =>
          getIt<Validators>().validateEmailAddress(value).fold(
                (f) => f.maybeMap(
                  orElse: () => null,
                  emptyField: (_) => 'Campo obrigatório',
                  emailBadlyFormatted: (_) => 'Email inválido',
                ),
                (_) => null,
              ),
      onChanged: (value) {
        context.bloc<SignInBloc>().add(SignInEvent.emailChanged(value));
      },
      onFieldSubmitted: (value) {
        FocusScope.of(context).requestFocus(_passwordFocusNode);
      },
      textInputAction: TextInputAction.next,
    );
  }

  TextFormField buildPasswordInput(BuildContext context, SignInState state) {
    return TextFormField(
      focusNode: _passwordFocusNode,
      autovalidate: state.showErrorMessages,
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
      onChanged: (value) {
        context.bloc<SignInBloc>().add(SignInEvent.passwordChanged(value));
      },
      onFieldSubmitted: (value) {
        context.bloc<SignInBloc>().add(const SignInEvent.signInPressed());
      },
      textInputAction: TextInputAction.done,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
  }
}
