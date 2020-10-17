import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../core/default_button.dart';
import '../../../../../../routes/router.gr.dart';
import '../../../../../../service_locator.dart';
import '../../../../core/util/validators.dart';
import '../../../auth_bloc.dart';
import '../../bloc/sign_up_bloc.dart';

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (context, state) {
        state.signUpSuccessOrFailureOption.fold(
          () {},
          (either) => either.fold(
            (f) => Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  f.maybeMap(
                    orElse: () {},
                    emailAlreadyInUse: (_) => 'Email já está em uso',
                    invalidEmailAndPasswordCombination: (_) =>
                        'Email e/ou senha inválidos',
                    serverFailure: (value) => 'Erro no servidor',
                    unknownFailure: (_) => 'Erro desconhecido',
                    weakPassword: (_) => 'Senha muito fraca',
                  ),
                ),
              ),
            ),
            (_) {
              context.bloc<AuthBloc>().add(AuthEvent.authCheckRequested());
              ExtendedNavigator.of(context)
                  .replace(Routes.bottomNavigationManager);
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              buildNameInput(context, state),
              SizedBox(height: 10),
              buildEmailInput(context, state),
              SizedBox(height: 10),
              buildPasswordInput(context, state),
              SizedBox(height: 10),
              buildConfirmPasswordInput(context, state),
              DefaultButton(
                text: 'Criar conta',
                handler: state.isSubmitting
                    ? null
                    : () {
                        context
                            .bloc<SignUpBloc>()
                            .add(const SignUpEvent.signUpPressed());
                      },
              ),
            ],
          ),
        );
      },
    );
  }

  TextFormField buildNameInput(BuildContext context, SignUpState state) {
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
      validator: (value) => getIt<Validators>().validateDisplayName(value).fold(
            (f) => f.maybeMap(
              orElse: () => null,
              displayNameTooLong: (_) => 'Nome muito grande',
              emptyField: (_) => 'Campo obrigatório',
            ),
            (r) => null,
          ),
      onChanged: (value) {
        context.bloc<SignUpBloc>().add(SignUpEvent.displayNameChanged(value));
      },
    );
  }

  TextFormField buildEmailInput(BuildContext context, SignUpState state) {
    return TextFormField(
      autovalidate: state.showErrorMessages,
      autocorrect: false,
      cursorColor: kPrimaryColor,
      enableSuggestions: false,
      keyboardType: TextInputType.emailAddress,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: 'Seu email',
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
        context.bloc<SignUpBloc>().add(SignUpEvent.emailChanged(value));
      },
    );
  }

  TextFormField buildPasswordInput(BuildContext context, SignUpState state) {
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
      validator: (value) => getIt<Validators>().validatePassword(value).fold(
            (f) => f.maybeMap(
              orElse: () => null,
              emptyField: (_) => 'Campo obrigatório',
            ),
            (r) => null,
          ),
      onChanged: (value) {
        context.bloc<SignUpBloc>().add(SignUpEvent.passwordChanged(value));
      },
    );
  }

  TextFormField buildConfirmPasswordInput(
      BuildContext context, SignUpState state) {
    return TextFormField(
      autocorrect: state.showErrorMessages,
      cursorColor: kPrimaryColor,
      enableSuggestions: false,
      keyboardType: TextInputType.name,
      obscureText: true,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: 'Confirme sua senha',
        border: OutlineInputBorder(borderRadius: kBorderRadius),
      ),
      validator: (value) =>
          state.password == value ? null : 'Senhas não conferem',
    );
  }
}
