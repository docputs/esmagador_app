import 'package:esmagador/features/auth/domain/entities/user_model.dart';
import 'package:flutter/foundation.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> createAccount({
    @required String displayName,
    @required String email,
    @required String password,
  });
  Future<UserModel> signInWithEmailAndPassword({
    @required String email,
    @required String password,
  });
  Future<UserModel> signInWithGoogle();
  Future<UserModel> getCurrentUser();
  Future<void> deleteAccount();
  Future<void> changeDisplayName();
  Future<void> changeEmail();
  Future<void> changePassword();
}
