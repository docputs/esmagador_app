import 'package:dartz/dartz.dart';
import 'package:esmagador/features/auth/core/errors/auth_failure.dart';
import 'package:esmagador/features/auth/core/util/validators.dart';
import 'package:esmagador/features/auth/domain/repositories/user_repository.dart';
import 'package:esmagador/features/auth/domain/usecases/sign_in.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockUserRepository extends Mock implements UserRepository {}

class MockEmailValidator extends Mock implements EmailValidator {}

void main() {
  MockUserRepository mockUserRepository;
  MockEmailValidator mockEmailValidator;
  SignIn usecase;

  setUp(() {
    mockUserRepository = MockUserRepository();
    mockEmailValidator = MockEmailValidator();
    usecase = SignIn(
      userRepository: mockUserRepository,
      validator: mockEmailValidator,
    );
  });

  final email = 'teste@teste.com';
  final password = 'teste';
  final invalidEmail = 'teste@teste';

  test('should sign in when email is valid', () async {
    when(mockEmailValidator.validateEmailAddress(any)).thenReturn(Right(email));
    when(mockUserRepository.signInWithEmailAndPassword(
            email: anyNamed('email'), password: anyNamed('password')))
        .thenAnswer((_) async => Right(unit));

    final result = await usecase(Params(email: email, password: password));

    expect(result, Right(unit));
    verify(usecase(Params(email: email, password: password)));
    // verifyNoMoreInteractions(mockUserRepository);
  });

  test('should return AuthFailure when email is invalid', () async {
    when(mockEmailValidator.validateEmailAddress(any))
        .thenReturn(Left(AuthFailure.emailBadlyFormatted()));

    final result =
        await usecase(Params(email: invalidEmail, password: password));

    expect(result, Left(AuthFailure.invalidEmailAddress()));
  });
}
