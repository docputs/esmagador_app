import 'package:dartz/dartz.dart';
import 'package:esmagador/features/auth/data/datasources/user_remote_data_source.dart';
import 'package:esmagador/features/auth/data/repositories/user_repository.dart';
import 'package:esmagador/features/auth/domain/entities/user_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockUserRemoteDataSource extends Mock implements UserRemoteDataSource {}

void main() {
  UserRepositoryImpl repository;
  MockUserRemoteDataSource mockUserRemoteDataSource;

  setUp(() {
    mockUserRemoteDataSource = MockUserRemoteDataSource();
    repository = UserRepositoryImpl(mockUserRemoteDataSource);
  });

  final userModel = UserModel(
    id: '1',
    displayName: 'usuario',
    email: 'usuario@teste.com.br',
  );

  group('createAccount', () {
    test('should create user with email, password and displayName', () async {
      when(mockUserRemoteDataSource.createAccount(
        displayName: anyNamed('displayName'),
        email: anyNamed('email'),
        password: anyNamed('password'),
      )).thenAnswer((_) async => userModel);

      final result = await repository.createAccount(
        displayName: userModel.displayName,
        email: userModel.email,
        password: 'teste',
      );

      expect(result, Right(userModel));
      verify(mockUserRemoteDataSource.createAccount(
        displayName: userModel.displayName,
        email: userModel.email,
        password: 'teste',
      ));
      verifyNoMoreInteractions(mockUserRemoteDataSource);
    });

    test('should return Failure when email is already taken', () {
      when(mockUserRemoteDataSource.createAccount(
        displayName: anyNamed('displayName'),
        email: anyNamed('email'),
        password: anyNamed('password'),
      )).thenThrow(throw ServerException());
    });
  });
}
