import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:esmagador/features/auth/domain/usecases/sign_in_with_google.dart';
import 'package:esmagador/features/workout/core/usecases/no_params.dart';
import 'package:flutter/foundation.dart';

import '../../../core/util/email_validator.dart';
import '../../../domain/usecases/sign_in.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignIn signIn;
  final SignInWithGoogle signInWithGoogle;

  SignInBloc({
    @required this.signIn,
    @required this.signInWithGoogle,
  }) : super(SignInInitial());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    if (event is SignedIn) {
      yield SignInLoading();
      final failureOrSuccess =
          await signIn(Params(email: event.email, password: event.password));
      yield failureOrSuccess.fold(
        (failure) => SignInError(failure.message),
        (_) {
          return SignInSuccessful();
        },
      );
    } else if (event is SignedInWithGoogle) {
      final either = await signInWithGoogle(NoParams());
      yield either.fold(
        (failure) => SignInError(failure.message),
        (_) => SignInSuccessful(),
      );
    }
  }
}
