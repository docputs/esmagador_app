import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:esmagador/features/auth/core/errors/failures.dart';
import 'package:esmagador/features/auth/core/util/email_validator.dart';
import 'package:esmagador/features/auth/domain/entities/user_model.dart';
import 'package:esmagador/features/auth/domain/usecases/sign_in.dart';
import 'package:esmagador/features/auth/domain/usecases/sign_in_with_google.dart';
import 'package:esmagador/features/auth/presentation/sign_in/bloc/sign_in_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockSignIn extends Mock implements SignIn {}

class MockSignInWithGoogle extends Mock implements SignInWithGoogle {}

void main() {
  MockSignIn mockSignIn;
  MockSignInWithGoogle mockSignInWithGoogle;
  SignInBloc bloc;

  setUp(() {
    mockSignIn = MockSignIn();
    mockSignInWithGoogle = MockSignInWithGoogle();
    bloc = SignInBloc(
      signIn: mockSignIn,
      signInWithGoogle: mockSignInWithGoogle,
    );
  });

  group('signIn', () {
    final displayName = 'Teste';
    final email = 'teste@teste.com';
    final password = 'teste';
    final userModel =
        UserModel(id: '1', displayName: displayName, email: email);

    blocTest(
      'should emit [SignInLoading, SignInError] when signIn returns an AuthFailure',
      build: () {
        when(mockSignIn(any)).thenAnswer(
            (_) async => Left(InvalidEmailAddress('Email inválido')));
        return bloc;
      },
      act: (bloc) => bloc.add(SignedIn(email: email, password: password)),
      expect: [SignInLoading(), SignInError('Email inválido')],
    );
  });
}
