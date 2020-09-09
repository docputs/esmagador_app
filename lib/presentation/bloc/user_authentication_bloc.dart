import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:esmagador/data/repositories/user_repository.dart';
import 'package:esmagador/data/models/authenticated_user.dart';
import 'package:flutter/foundation.dart';

part 'user_authentication_event.dart';
part 'user_authentication_state.dart';

class UserAuthenticationBloc
    extends Bloc<UserAuthenticationEvent, UserAuthenticationState> {
  final UserRepository _userRepository;

  UserAuthenticationBloc(this._userRepository)
      : assert(_userRepository != null),
        super(UserAuthenticationInitial());

  @override
  Stream<UserAuthenticationState> mapEventToState(
    UserAuthenticationEvent event,
  ) async* {
    if (event is SignInEvent) {
      final response = await _userRepository.signInWithEmailAndPassword(
          email: event.email, password: event.password);
      response.fold(
        (authFailure) async* {
          yield UserAuthenticationError(authFailure.errorMessage);
        },
        (authenticatedUser) async* {
          yield UserAuthenticationAuthenticated(authenticatedUser);
        },
      );
    } else if (event is SignUpEvent) {
      final response = await _userRepository.createUserWithEmailAndPassword(
          displayName: event.displayName,
          email: event.email,
          password: event.password);
      response.fold(
        (authFailure) async* {
          yield UserAuthenticationError(authFailure.errorMessage);
        },
        (authenticatedUser) async* {
          yield UserAuthenticationAuthenticated(authenticatedUser);
        },
      );
    } else {
      yield UserAuthenticationUnauthenticated();
      _userRepository.signOut();
    }
  }

  void signIn({
    @required String email,
    @required String password,
  }) =>
      add(SignInEvent(email: email, password: password));

  void signUp({
    @required String displayName,
    @required String email,
    @required String password,
  }) {
    add(SignUpEvent(
        displayName: displayName, email: email, password: password));
  }

  void signOut() => add(LogoutEvent());

  void dispose() => dispose();
}
