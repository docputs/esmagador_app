import 'package:dartz/dartz.dart';
import 'package:esmagador/features/auth/core/errors/auth_failure.dart';
import 'package:esmagador/features/auth/core/util/validators.dart';
import 'package:esmagador/features/auth/domain/repositories/user_repository.dart';
import 'package:esmagador/features/auth/domain/usecases/sign_in.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockUserRepository extends Mock implements UserRepository {}

class MockValidators extends Mock implements Validators {}

void main() {
  MockUserRepository mockUserRepository;
  MockValidators mockValidators;
  SignIn usecase;

  setUp(() {
    mockUserRepository = MockUserRepository();
    mockValidators = MockValidators();
    usecase = SignIn(
      userRepository: mockUserRepository,
      validators: mockValidators,
    );
  });

  final email = 'teste@teste.com';
  final password = 'teste';
  final invalidEmail = 'teste@teste';

  test('should sign in when email is valid', () async {
    when(mockValidators.validateEmailAddress(any)).thenReturn(Right(email));
    when(mockUserRepository.signInWithEmailAndPassword(
            email: anyNamed('email'), password: anyNamed('password')))
        .thenAnswer((_) async => Right(unit));

    final result = await usecase(Params(email: email, password: password));

    expect(result, Right(unit));
    verify(usecase(Params(email: email, password: password)));
    // verifyNoMoreInteractions(mockUserRepository);
  });

  test('should return AuthFailure when email is invalid', () async {
    when(mockValidators.validateEmailAddress(any))
        .thenReturn(Left(AuthFailure.emailBadlyFormatted()));

    final result =
        await usecase(Params(email: invalidEmail, password: password));

    expect(result, Left(AuthFailure.invalidEmailAddress()));
  });
}
