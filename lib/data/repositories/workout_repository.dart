import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:esmagador/data/repositories/user_repository.dart';

class WorkoutRepository {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  UserRepository _userRepository;

  WorkoutRepository(this._userRepository);

  void createNewWorkout() {
    final userId = _userRepository.getCurrentUser();
    _firestore.collection('users/${userId.id}');
  }
}
