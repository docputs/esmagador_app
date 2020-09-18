import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:esmagador/features/auth/data/repositories/firebase_user_repository.dart';
import 'package:esmagador/features/auth/domain/entities/user_model.dart';
import 'package:esmagador/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockFirebaseUserRepository extends Mock
    implements FirebaseUserRepository {}

void main() {
  MockFirebaseUserRepository mockFirebaseUserRepository;
  AuthBloc bloc;

  setUp(() {
    mockFirebaseUserRepository = MockFirebaseUserRepository();
    bloc = AuthBloc(mockFirebaseUserRepository);
  });

  final displayName = 'Teste';
  final email = 'teste@teste.com';
  final password = 'teste';
  final userModel = UserModel(
    id: '1',
    displayName: displayName,
    email: email,
  );

  blocTest(
    'should emit [AuthAuthenticated] when user signed in',
    build: () {
      return bloc;
    },
    act: (bloc) => bloc.add(AuthLoggedIn()),
    expect: [AuthAuthenticated()],
  );

  blocTest(
    'should emit [AuthLoading, AuthUnauthenticated] when user signed out',
    build: () {
      return bloc;
    },
    act: (bloc) => bloc.add(AuthLoggedOut()),
    expect: [AuthUnauthenticated()],
  );

  blocTest(
    'should emit [AuthLoading, AuthAuthenticated] when onAuthStatusChanged() yields a user',
    build: () {
      when(mockFirebaseUserRepository.onAuthStatusChanged())
          .thenAnswer((_) async* {
        yield some(userModel);
      });
      return bloc;
    },
    act: (bloc) => bloc.add(AuthAppStarted()),
    expect: [AuthAuthenticated()],
  );

  blocTest(
    'should emit [AuthLoading, AuthUnauthenticated] when onAuthStatusChanged() yields none',
    build: () {
      when(mockFirebaseUserRepository.onAuthStatusChanged())
          .thenAnswer((_) async* {
        yield none();
      });
      return bloc;
    },
    act: (bloc) => bloc.add(AuthAppStarted()),
    expect: [AuthUnauthenticated()],
  );
}
