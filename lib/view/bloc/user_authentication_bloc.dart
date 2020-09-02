import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:esmagador/data/user_repository.dart';
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
    if (event is AppStarted)
      yield* _mapAppStartedToState();
    else if (event is SignInEvent)
      yield* _mapSignInEventToState();
    else if (event is RegisterEvent)
      yield* _mapRegisterEventToState();
    else
      yield* _mapLogoutEventToState();
    // try {
    //   if (event is SignInEvent) {
    //     final authenticatedUser = await _userRepository.signUserIn(
    //       email: event.email,
    //       password: event.password,
    //     );
    //     yield UserAuthenticationAuthenticated(authenticatedUser);
    //   } else if (event is RegisterEvent) {
    //     final registeredUser = await _userRepository.createNewAccount(
    //       displayName: event.displayName,
    //       email: event.email,
    //       password: event.password,
    //     );
    //     yield UserAuthenticationAuthenticated(registeredUser);
    //   } else {
    //     await _userRepository.signOut();
    //     yield UserAuthenticationUnauthenticated();
    //   }
    // } catch (error) {
    //   yield UserAuthenticationError(error.message);
    // }
  }

  Stream<UserAuthenticationState> _mapAppStartedToState() async* {
    _userRepository.listenToUserChanges();
  }

  Stream<UserAuthenticationState> _mapSignInEventToState() async* {
    final user = _userRepository.getCurrentUser();
    yield UserAuthenticationAuthenticated(user);
  }

  Stream<UserAuthenticationState> _mapRegisterEventToState() async* {}

  Stream<UserAuthenticationState> _mapLogoutEventToState() async* {
    yield UserAuthenticationUnauthenticated();
    _userRepository.signOut();
  }

  void signIn(String email, String password) =>
      add(SignInEvent(email: email, password: password));

  void signOut() => add(LogoutEvent());

  void dispose() => dispose();
}
