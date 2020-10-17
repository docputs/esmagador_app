import 'package:dartz/dartz.dart';
import 'package:esmagador/features/auth/core/util/validators.dart';
import 'package:esmagador/features/auth/domain/repositories/user_repository.dart';
import 'package:esmagador/features/auth/domain/usecases/sign_up.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockUserRepository extends Mock implements UserRepository {}

class MockValidators extends Mock implements Validators {}

void main() {
  MockUserRepository mockUserRepository;
  MockValidators mockValidators;
  SignUp usecase;

  setUp(() {
    mockUserRepository = MockUserRepository();
    mockValidators = MockValidators();
    usecase = SignUp(mockUserRepository);
  });

  final displayName = 'Teste';
  final email = 'teste@teste.com';
  final password = 'teste';

  test('should return UserModel when successfully signed up', () async {
    when(mockUserRepository.createAccount(
            displayName: displayName, email: email, password: password))
        .thenAnswer((_) async => Right(unit));
    when(mockValidators.validateDisplayName(any))
        .thenReturn(Right(displayName));
    when(mockValidators.validateEmailAddress(any)).thenReturn(Right(email));

    final result = await usecase(
        Params(displayName: displayName, email: email, password: password));

    expect(result, Right(unit));
    verify(
      usecase(
        Params(
          displayName: displayName,
          email: email,
          password: password,
        ),
      ),
    );
    verifyNoMoreInteractions(mockUserRepository);
  });
}
