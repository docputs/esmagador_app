import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import 'authenticated_user.dart';

abstract class UserRepository {
  Future<AuthenticatedUser> createNewAccount({
    @required String email,
    @required String password,
  });

  Future<AuthenticatedUser> signUserIn({
    @required String email,
    @required String password,
  });
}

class FakeRepository implements UserRepository {
  @override
  Future<AuthenticatedUser> createNewAccount(
      {@required String email, @required String password}) {
    return Future.delayed(Duration(seconds: 2), () {
      return AuthenticatedUser(
        email: 'teste@teste.com.br',
        id: '1234',
        displayName: 'Teste',
        emailVerified: true,
      );
    });
  }

  @override
  Future<AuthenticatedUser> signUserIn({String email, String password}) {
    // TODO: implement signUserIn
    throw UnimplementedError();
  }
}

class FirebaseAuthRepository implements UserRepository {
  FirebaseAuth _firebaseAuth;

  FirebaseAuthRepository() {
    _firebaseAuth = FirebaseAuth.instance;
  }

  @override
  Future<AuthenticatedUser> createNewAccount(
      {@required String email, @required String password}) async {
    final response = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    return AuthenticatedUser(
      email: response.user.email,
      id: response.user.uid,
      emailVerified: response.user.emailVerified,
    );
  }

  Future<AuthenticatedUser> signUserIn(
      {@required String email, @required String password}) async {
    final response = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return AuthenticatedUser(
      id: response.user.uid,
      email: response.user.email,
    );
  }
}
