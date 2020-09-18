import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/repositories/user_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserRepository userRepository;
  StreamSubscription _subscription;

  AuthBloc(this.userRepository) : super(AuthInitializing());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is AuthAppStarted) {
      _subscription?.cancel();
      _subscription = userRepository.onAuthStatusChanged().listen((userOption) {
        userOption.fold(
          () => add(AuthLoggedOut()),
          (_) => add(AuthLoggedIn()),
        );
      });
    } else if (event is AuthLoggedIn) {
      yield AuthAuthenticated();
    } else if (event is AuthLoggedOut) {
      yield AuthUnauthenticated();
    }
  }
}
