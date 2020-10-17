import 'package:flutter/foundation.dart';

class Profile {
  final String displayName;
  final String email;
  final String profilePictureURL;

  const Profile({
    @required this.displayName,
    @required this.email,
    @required this.profilePictureURL,
  });

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Profile &&
        o.displayName == displayName &&
        o.email == email &&
        o.profilePictureURL == profilePictureURL;
  }

  @override
  int get hashCode =>
      displayName.hashCode ^ email.hashCode ^ profilePictureURL.hashCode;

  @override
  String toString() => '$displayName ($email)';

  factory Profile.empty() => Profile(
        displayName: '',
        email: '',
        profilePictureURL: '',
      );
}
