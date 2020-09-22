import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/repositories/user_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserRepository userRepository;

  AuthBloc(this.userRepository) : super(AuthState.initializing());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await userRepository.getCurrentUser();
        yield userOption.fold(
          () => AuthState.unauthenticated(),
          (userModel) => AuthState.authenticated(),
        );
      },
      signedOut: (e) async* {
        await userRepository.signOut();
        yield AuthState.unauthenticated();
      },
    );
  }
}
