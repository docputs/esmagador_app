import 'package:flutter/foundation.dart';

class AuthenticatedUser {
  String id;
  String displayName;
  String email;
  String picture;
  bool emailVerified;

  AuthenticatedUser({
    @required this.id,
    this.displayName,
    @required this.email,
    this.picture,
    this.emailVerified,
  });
}
