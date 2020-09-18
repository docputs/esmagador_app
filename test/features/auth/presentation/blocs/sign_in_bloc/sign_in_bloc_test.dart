import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:esmagador/features/auth/core/errors/failures.dart';
import 'package:esmagador/features/auth/core/util/email_validator.dart';
import 'package:esmagador/features/auth/domain/entities/user_model.dart';
import 'package:esmagador/features/auth/domain/usecases/sign_in.dart';
import 'package:esmagador/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:esmagador/features/auth/presentation/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockAuthBloc extends Mock implements AuthBloc {}

class MockSignIn extends Mock implements SignIn {}

class MockEmailValidator extends Mock implements EmailValidator {}

void main() {
  MockAuthBloc mockAuthBloc;
  MockSignIn mockSignIn;
  MockEmailValidator mockEmailValidator;
  SignInBloc bloc;

  setUp(() {
    mockAuthBloc = MockAuthBloc();
    mockSignIn = MockSignIn();
    mockEmailValidator = MockEmailValidator();
    bloc = SignInBloc(
      authBloc: mockAuthBloc,
      signIn: mockSignIn,
      emailValidator: mockEmailValidator,
    );
  });

  group('signIn', () {
    final displayName = 'Teste';
    final email = 'teste@teste.com';
    final password = 'teste';
    final userModel =
        UserModel(id: '1', displayName: displayName, email: email);

    blocTest(
      'should emit [SignInLoading, SignInError] when email is badly formatted',
      build: () {
        when(mockEmailValidator.validateEmailAddress(email))
            .thenReturn(Left(EmailBadlyFormatted('Email inválido')));
        return bloc;
      },
      verify: (_) => mockEmailValidator.validateEmailAddress(email),
      act: (bloc) => bloc.add(SignedIn(email: email, password: password)),
      expect: [SignInLoading(), SignInError('Email inválido')],
    );

    blocTest(
      'should emit [SignInLoading, SignInError] when signIn returns an AuthFailure',
      build: () {
        when(mockEmailValidator.validateEmailAddress(any))
            .thenReturn(Right(email));
        when(mockSignIn(any)).thenAnswer(
            (_) async => Left(InvalidEmailAddress('Email inválido')));
        return bloc;
      },
      act: (bloc) => bloc.add(SignedIn(email: email, password: password)),
      expect: [SignInLoading(), SignInError('Email inválido')],
    );

    blocTest(
      'should add AuthLoggedIn event to authBloc when successfully signed in',
      build: () {
        when(mockEmailValidator.validateEmailAddress(any))
            .thenReturn(Right(email));
        when(mockSignIn(any)).thenAnswer((_) async => Right(unit));
        return bloc;
      },
      verify: (_) => mockAuthBloc.add(AuthLoggedIn()),
    );
  });
}
