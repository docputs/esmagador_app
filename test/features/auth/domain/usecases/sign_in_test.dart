import 'package:dartz/dartz.dart';
import 'package:esmagador/features/auth/domain/repositories/user_repository.dart';
import 'package:esmagador/features/auth/domain/usecases/sign_in.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  MockUserRepository mockUserRepository;
  SignIn usecase;

  setUp(() {
    mockUserRepository = MockUserRepository();
    usecase = SignIn(mockUserRepository);
  });

  final email = 'teste@teste.com';
  final password = 'teste';

  test('should return UserModel when successfully signed in', () async {
    when(mockUserRepository.signInWithEmailAndPassword(
            email: email, password: password))
        .thenAnswer((_) async => Right(unit));

    final result = await usecase(Params(email: email, password: password));

    expect(result, Right(unit));
    verify(usecase(Params(email: email, password: password)));
    verifyNoMoreInteractions(mockUserRepository);
  });
}
