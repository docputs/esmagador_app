import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../core/errors/auth_failure.dart';
import '../../core/errors/failures.dart';
import '../../core/util/firebase_user_mapper.dart';
import '../../domain/entities/user_model.dart';
import '../../domain/repositories/user_repository.dart';

class FirebaseUserRepository implements UserRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  const FirebaseUserRepository(this._firebaseAuth, this._googleSignIn);

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
  Future<Either<AuthFailure, Unit>> createAccount({
    @required String displayName,
    @required String email,
    @required String password,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      await _firebaseAuth.currentUser.updateProfile(displayName: displayName);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.message == 'invalid-email') {
        return left(InvalidEmailAddress('Email inválido'));
      } else if (e.message == 'email-already-in-use') {
        return left(EmailAlreadyInUse('Email já está em uso'));
      } else if (e.message == 'weak-password') {
        return left(WeakPassword('Senha fraca'));
      }
    } catch (e) {
      return left(UnknownFailure('Erro desconhecido'));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> deleteAccount() {
    // TODO: implement deleteUser
  }

  @override
  Future<Option<UserModel>> getCurrentUser() async {
    final user = _firebaseAuth.currentUser;
    return optionOf(user?.toDomain());
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required String email,
    @required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        return left(InvalidEmailAddress('Email inválido'));
      } else if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return left(
            InvalidEmailAndPasswordCombination('Email e/ou senha inválidos'));
      } else {
        return left(ServerFailure('Erro no servidor'));
      }
    } catch (e) {
      return left(UnknownFailure('Erro desconhecido'));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    final signInAccount = await _googleSignIn.signIn();
    if (signInAccount == null)
      return left(CancelledByUser('Cancelado pelo usuário'));

    final googleAuth = await signInAccount.authentication;
    final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);

    try {
      await _firebaseAuth.signInWithCredential(credential);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      return left(UnknownFailure('Erro desconhecido'));
    }
  }

  @override
  Stream<Option<UserModel>> onAuthStatusChanged() async* {
    yield* _firebaseAuth
        .userChanges()
        .map((user) => optionOf(user?.toDomain()));
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
