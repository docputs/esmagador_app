import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:esmagador/features/auth/domain/repositories/user_repository.dart';
import 'package:flutter/widgets.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final UserRepository userRepository;

  SignUpBloc(this.userRepository) : super(SignUpInitial());

  @override
  Stream<SignUpState> mapEventToState(
    SignUpEvent event,
  ) async* {}
}
