// import 'package:dartz/dartz.dart';
// import 'package:esmagador/features/auth/core/errors/exceptions.dart';
// import 'package:esmagador/features/auth/core/errors/failures.dart';
// import 'package:esmagador/features/auth/data/repositories/firebase_user_repository.dart';
// import 'package:esmagador/features/auth/domain/entities/user_model.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';

// class MockFirebaseAuth extends Mock implements FirebaseAuth {}

void main() {
//   FirebaseUserRepository repository;
//   MockFirebaseAuth mockFirebaseAuth;

//   setUp(() {
//     mockFirebaseAuth = MockFirebaseAuth();
//     repository = FirebaseUserRepository(mockFirebaseAuth);
//   });

//   final displayName = 'Teste';
//   final email = 'teste@teste.com';
//   final password = 'teste';
//   final userModel = UserModel(
//     id: '1',
//     displayName: displayName,
//     email: email,
//   );

//   group('createUserWithEmailAndPassword', () {
//     void setUpSuccessfulAccountCreation() {
//       when(mockFirebaseAuth.createUserWithEmailAndPassword(
//         email: anyNamed('email'),
//         password: anyNamed('password'),
//       )).thenAnswer((_) async => userModel);
//     }

//     void setUpUnsuccessfulAccountCreation(Exception exception) {
//       when(mockFirebaseAuth.createAccount(
//         displayName: anyNamed('displayName'),
//         email: anyNamed('email'),
//         password: anyNamed('password'),
//       )).thenThrow(exception);
//     }

//     test('should call createAccount() in the remote datasource', () async {
//       await repository.createAccount(
//           displayName: displayName, email: email, password: password);

//       verify(mockFirebaseAuth.createAccount(
//         displayName: displayName,
//         email: email,
//         password: password,
//       ));
//       verifyNoMoreInteractions(mockFirebaseAuth);
//     });

//     test('should create user with email, password and displayName', () async {
//       setUpSuccessfulAccountCreation();

//       final result = await repository.createAccount(
//         displayName: displayName,
//         email: email,
//         password: password,
//       );

//       expect(result, Right(userModel));
//     });

//     test('should return AuthFailure when email is already in use', () async {
//       setUpUnsuccessfulAccountCreation(EmailAlreadyInUseException());

//       final result = await repository.createAccount(
//           displayName: displayName, email: email, password: password);

//       expect(result, Left(EmailAlreadyInUse('Email já está em uso')));
//     });

//     test('should return AuthFailure when email is invalid', () async {
//       setUpUnsuccessfulAccountCreation(InvalidEmailAddressException());

//       final result = await repository.createAccount(
//           displayName: displayName, email: email, password: password);

//       expect(result, Left(InvalidEmailAddress('Email inválido')));
//     });
//   });

//   group('signInWithEmailAndPassword', () {
//     test('should call signInWithEmailAndPassword in the remote datasource',
//         () async {
//       await repository.signInWithEmailAndPassword(
//           email: email, password: password);

//       verify(mockFirebaseAuth.signInWithEmailAndPassword(
//           email: email, password: password));
//     });

//     test(
//       'should successfully sign in when email and password combination is valid',
//       () async {
//         when(mockFirebaseAuth.signInWithEmailAndPassword(
//                 email: anyNamed('email'), password: anyNamed('password')))
//             .thenAnswer((_) async => userModel);

//         final result = await repository.signInWithEmailAndPassword(
//             email: email, password: password);

//         expect(result, Right(userModel));
//       },
//     );

//     test(
//         'should return AuthFailure when email and password combination is wrong',
//         () async {
//       when(mockFirebaseAuth.signInWithEmailAndPassword(
//         email: anyNamed('email'),
//         password: anyNamed('password'),
//       )).thenThrow(InvalidEmailAndPasswordCombinationException());

//       final result = await repository.signInWithEmailAndPassword(
//           email: email, password: password);

//       expect(
//         result,
//         Left(
//           InvalidEmailAndPasswordCombination('Email e/ou senha inválidos'),
//         ),
//       );
//     });
//   });

//   group('getCurrentUser', () {
//     test('should call getCurrentUser() in the remote datasource', () {
//       repository.getCurrentUser();

//       verify(mockFirebaseAuth.getCurrentUser());
//     });

//     test('should return a valid UserModel', () async {
//       when(mockFirebaseAuth.getCurrentUser())
//           .thenAnswer((_) async => userModel);

//       final result = await repository.getCurrentUser();

//       expect(result, Right(userModel));
//     });

//     test(
//       'should return AuthFailure when getCurrentUser() throws an Exception',
//       () async {
//         when(mockFirebaseAuth.getCurrentUser())
//             .thenThrow(ServerException());

//         final result = await repository.getCurrentUser();

//         expect(result, Left(ServerFailure('Erro no servidor')));
//       },
//     );
//   });

//   group('signOut', () {
//     test('should successfully sign user out', () {
//       when(mockFirebaseAuth.signOut()).thenAnswer((realInvocation) => );
//     });
//   });

// group('authStatus', () {
//   test('should return true if the user is currently authenticated', () async {
//     when(mockUserRemoteDataSource.authStatus())
//         .thenAnswer((_) async => true);

//     final result = repository.authStatus().listen((event) {

//     });

//     expect(result, Right(true));
//   });

//   test('should return false if the user is currently unauthenticated',
//       () async {
//     when(mockUserRemoteDataSource.authStatus())
//         .thenAnswer((_) async => false);

//     final result = await repository.authStatus();

//     expect(result, Right(false));
//   });

//   test('should return Failure when exception is thrown', () async {
//     when(mockUserRemoteDataSource.authStatus())
//         .thenThrow(ServerException());

//     final result = await repository.authStatus();

//     expect(result,
//         Left(ServerFailure('Erro no servidor. Tente novamente mais tarde')));
//   });
// });
}
