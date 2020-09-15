import 'package:dartz/dartz.dart';
import 'package:esmagador/features/auth/core/errors/auth_failure.dart';
import 'package:esmagador/features/auth/data/datasources/user_remote_data_source.dart';
import 'package:esmagador/features/auth/domain/entities/user_model.dart';
import 'package:flutter/foundation.dart';

abstract class UserRepository {
  final UserRemoteDataSource remoteDataSource;

  const UserRepository(this.remoteDataSource);

  Future<Either<AuthFailure, UserModel>> createAccount({
    @required String displayName,
    @required String email,
    @required String password,
  });
  Future<Either<AuthFailure, UserModel>> signInWithEmailAndPassword({
    @required String email,
    @required String password,
  });
  Future<Either<AuthFailure, UserModel>> getCurrentUser();
  Future<Either<AuthFailure, Unit>> deleteAccount();
  Future<Either<AuthFailure, Unit>> changeEmail();
  Future<Either<AuthFailure, Unit>> changePassword();
  Future<Either<AuthFailure, Unit>> changeDisplayName();
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;

  const UserRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<AuthFailure, Unit>> changeDisplayName() {
    // TODO: implement changeDisplayName
  }

  @override
  Future<Either<AuthFailure, Unit>> changeEmail() {
    // TODO: implement changeEmail
  }

  @override
  Future<Either<AuthFailure, Unit>> changePassword() {
    // TODO: implement changePassword
  }

  @override
  Future<Either<AuthFailure, UserModel>> createAccount({
    @required String displayName,
    @required String email,
    @required String password,
  }) async {
    final userModel = await remoteDataSource.createAccount(
        displayName: displayName, email: email, password: password);
    return right(userModel);
  }

  @override
  Future<Either<AuthFailure, Unit>> deleteAccount() {
    // TODO: implement deleteUser
  }

  @override
  Future<Either<AuthFailure, UserModel>> getCurrentUser() {
    // TODO: implement getCurrentUser
  }

  @override
  Future<Either<AuthFailure, UserModel>> signInWithEmailAndPassword({
    @required String email,
    @required String password,
  }) {
    // TODO: implement signInWithEmailAndPassword
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    // todo
  }
}
