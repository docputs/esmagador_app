import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../core/errors/auth_failure.dart';
import '../entities/user_model.dart';

abstract class UserRepository {
  Future<Either<AuthFailure, Unit>> createAccount({
    @required String displayName,
    @required String email,
    @required String password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required String email,
    @required String password,
  });
  Future<void> signOut();
  Stream<Option<UserModel>> onAuthStatusChanged();
  Future<Option<UserModel>> getCurrentUser();
  Future<Either<AuthFailure, Unit>> deleteAccount();
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
