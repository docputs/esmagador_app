import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:esmagador/data/models/authenticated_user.dart';
import 'package:flutter/widgets.dart';

import '../../../../../data/models/user_repository.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final UserRepository _repository;

  SignupBloc(this._repository) : super(SignupInitial());

  @override
  Stream<SignupState> mapEventToState(
    SignupEvent event,
  ) async* {
    if (event is SignupUserEvent) {
      yield SignupLoading();

      try {
        final response = await _repository.createNewAccount(
            email: event.email, password: event.password);
        yield SignupSuccessful(response);
      } catch (error) {
        yield SignupError(error.message);
      }
    }
  }

  void signUp({String displayName, String email, String password}) {
    add(
      SignupUserEvent(
        displayName: displayName,
        email: email,
        password: password,
      ),
    );
  }
}
