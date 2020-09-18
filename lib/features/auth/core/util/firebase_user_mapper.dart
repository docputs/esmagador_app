import 'package:esmagador/features/auth/domain/entities/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserMapperX on User {
  UserModel toDomain() {
    return UserModel(
        id: this.uid, displayName: this.displayName, email: this.email);
  }
}
