import 'package:flutter/foundation.dart';

class UserModel {
  final String id;
  final String displayName;
  final String email;

  const UserModel({
    @required this.id,
    @required this.displayName,
    @required this.email,
  });
}
