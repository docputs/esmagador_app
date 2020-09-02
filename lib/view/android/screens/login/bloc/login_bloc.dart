import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../data/user_repository.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  UserRepository _userRepository;

  LoginBloc(this._userRepository) : super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is TryLogin) {
      yield LoginLoading();

      try {
        _userRepository.signUserIn(
            email: event.email, password: event.password);
        yield LoginSuccessful(email: event.email);
      } catch (error) {
        yield LoginError(error.message);
      }
    }
  }

  void tryLogin(String email, String password) {
    add(TryLogin(email: email, password: password));
  }
}
