import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:esmagador/features/auth/core/util/email_validator.dart';
import 'package:esmagador/features/auth/domain/usecases/sign_in.dart';
import 'package:flutter/foundation.dart';

import '../auth_bloc/auth_bloc.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthBloc authBloc;
  final SignIn signIn;
  final EmailValidator emailValidator;

  SignInBloc({
    @required this.authBloc,
    @required this.signIn,
    @required this.emailValidator,
  }) : super(SignInInitial());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    if (event is SignedIn) {
      yield SignInLoading();
      final emailEither = emailValidator.validateEmailAddress(event.email);
      yield* emailEither.fold(
        (failure) async* {
          yield SignInError(failure.message);
        },
        (email) async* {
          final failureOrSuccess = await signIn(
              Params(email: event.email, password: event.password));
          yield failureOrSuccess.fold(
            (failure) => SignInError(failure.message),
            (_) {},
          );
        },
      );
    }
  }
}
