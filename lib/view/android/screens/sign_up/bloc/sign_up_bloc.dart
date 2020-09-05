import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:esmagador/data/user_repository.dart';
import 'package:flutter/widgets.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final UserRepository _userRepository;

  SignUpBloc(this._userRepository) : super(SignUpInitial());

  @override
  Stream<SignUpState> mapEventToState(
    SignUpEvent event,
  ) async* {
    if (event is SignUpUserEvent) {
      yield SignUpLoading();
      try {
        final authenticatedUser = await _userRepository.createUserWithEmailAndPassword(
            displayName: event.displayName,
            email: event.email,
            password: event.password);
        yield SignUpSuccessful();
      } catch (error) {
        yield SignUpError(error.message);
      }
    }
  }

  void signUp({String displayName, String email, String password}) {
    add(
      SignUpUserEvent(
        displayName: displayName,
        email: email,
        password: password,
      ),
    );
  }
}
