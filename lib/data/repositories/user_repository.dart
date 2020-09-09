import 'package:dartz/dartz.dart';
import 'package:esmagador/core/errors/auth_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import '../models/authenticated_user.dart';

class UserRepository {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<Either<AuthFailure, AuthenticatedUser>> createUserWithEmailAndPassword(
      {@required String displayName,
      @required String email,
      @required String password}) async {
    try {
      final user = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return right(AuthenticatedUser(
        email: user.user.email,
        id: user.user.uid,
      ));
    } on FirebaseAuthException catch (e) {
      return left(AuthFailure(e.message));
    } catch (e) {
      throw left(AuthFailure(e.message));
    }
  }

  Future<Either<AuthFailure, AuthenticatedUser>> signInWithEmailAndPassword(
      {@required String email, @required String password}) async {
    try {
      final response = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return right(AuthenticatedUser(
        id: response.user.uid,
        email: response.user.email,
      ));
    } on FirebaseAuthException catch (e) {
      return left(AuthFailure(e.message));
    } catch (e) {
      return left(AuthFailure(e.message));
    }
  }

  Stream<AuthenticatedUser> listenToUserChanges() {
    return firebaseAuth.userChanges().map((event) {
      if (event == null)
        return null;
      else
        return AuthenticatedUser(
          email: event.email,
          id: event.uid,
          displayName: event.displayName,
        );
    });
  }

  AuthenticatedUser getCurrentUser() {
    final user = firebaseAuth.currentUser;
    return AuthenticatedUser(
      id: user.uid,
      email: user.email,
      displayName: user.displayName,
      emailVerified: user.emailVerified,
    );
  }

  void signOut() {
    firebaseAuth.signOut();
  }
}
