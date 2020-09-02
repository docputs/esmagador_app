import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import 'models/authenticated_user.dart';

abstract class UserRepository {
  Future<AuthenticatedUser> createNewAccount({
    @required String displayName,
    @required String email,
    @required String password,
  });

  Future<AuthenticatedUser> signUserIn({
    @required String email,
    @required String password,
  });

  Future<void> signOut();

  bool isSignedIn();

  AuthenticatedUser getCurrentUser();

  Stream<AuthenticatedUser> listenToUserChanges();
}

class FirebaseUserRepository implements UserRepository {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  Future<AuthenticatedUser> createNewAccount(
      {@required String displayName,
      @required String email,
      @required String password}) async {
    final response = await firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    return AuthenticatedUser(
      email: response.user.email,
      id: response.user.uid,
      emailVerified: response.user.emailVerified,
    );
  }

  Future<AuthenticatedUser> signUserIn(
      {@required String email, @required String password}) async {
    try {
      final response = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return AuthenticatedUser(
        id: response.user.uid,
        email: response.user.email,
      );
    } on FirebaseAuthException catch (error) {
      throw error;
    } catch (error) {
      throw error;
    }
  }

  Future<void> signOut() async {
    await firebaseAuth.signOut();
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

  bool isSignedIn() {
    final user = firebaseAuth.currentUser;
    return user != null;
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
}

// class FakeUserRepository implements UserRepository {
//   @override
//   Future<AuthenticatedUser> createNewAccount(
//       {@required String displayName,
//       @required String email,
//       @required String password}) {
//     return Future.delayed(Duration(seconds: 2), () {
//       return AuthenticatedUser(
//         email: 'teste@teste.com.br',
//         id: '1234',
//         displayName: 'Teste',
//         emailVerified: true,
//       );
//     });
//   }

//   @override
//   Future<AuthenticatedUser> signUserIn({String email, String password}) {
//     // TODO: implement signUserIn
//     throw UnimplementedError();
//   }
// }
