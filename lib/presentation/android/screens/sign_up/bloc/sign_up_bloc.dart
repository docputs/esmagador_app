import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:esmagador/data/repositories/user_repository.dart';
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
      final response = await _userRepository.signInWithEmailAndPassword(
          email: event.email, password: event.password);
      yield* response.fold(
        (authFailure) async* {
          yield SignUpError(authFailure.errorMessage);
        },
        (authenticatedUser) async* {
          yield SignUpSuccessful();
        },
      );
    }
  }

  void signUp({String displayName, String email, String password}) {
    add(SignUpUserEvent(
      displayName: displayName,
      email: email,
      password: password,
    ));
  }
}
