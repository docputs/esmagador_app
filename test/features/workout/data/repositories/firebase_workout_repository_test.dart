import 'package:dartz/dartz.dart';
import 'package:esmagador/features/auth/domain/entities/user_model.dart';
import 'package:esmagador/features/auth/domain/repositories/user_repository.dart';
import 'package:esmagador/features/workout/core/errors/workout_failures.dart';
import 'package:esmagador/features/workout/data/repositories/firebase_workout_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import '../../fixtures/workout_fixture.dart';

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  MockUserRepository mockUserRepository;
  MockFirestoreInstance mockFirebaseFirestore;
  FirebaseWorkoutRepository repository;

  setUp(() {
    mockFirebaseFirestore = MockFirestoreInstance();
    mockUserRepository = MockUserRepository();
    repository = FirebaseWorkoutRepository(
      firestore: mockFirebaseFirestore,
      userRepository: mockUserRepository,
    );
  });

  group('saveWorkout', () {
    final displayName = 'Teste';
    final email = 'teste@teste.com';
    final userModel =
        UserModel(id: '123', displayName: displayName, email: email);

    test('should successfully save the workout when user is authenticated',
        () async {
      when(mockUserRepository.getCurrentUser())
          .thenAnswer((_) async => some(userModel));

      final result = await repository.saveWorkout(workout);

      expect(result, equals(Right(unit)));
    });

    test('should return Failure when user is not authenticated', () async {
      when(mockUserRepository.getCurrentUser()).thenAnswer((_) async => none());

      final result = await repository.saveWorkout(workout);

      expect(result, left(WorkoutFailure.couldNotSave()));
    });
  });
}
