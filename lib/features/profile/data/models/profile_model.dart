import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../domain/entities/profile.dart';

class ProfileModel extends Profile {
  final String displayName;
  final String email;
  final String profilePictureURL;

  const ProfileModel({
    @required this.displayName,
    @required this.email,
    @required this.profilePictureURL,
  });

  Map<String, dynamic> toMap() {
    return {
      'displayName': displayName,
      'email': email,
      'profilePictureURL': profilePictureURL,
    };
  }

  factory ProfileModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return ProfileModel(
      displayName: map['displayName'],
      email: map['email'],
      profilePictureURL: map['profilePictureURL'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProfileModel.fromJson(String source) =>
      ProfileModel.fromMap(json.decode(source));

  factory ProfileModel.fromDomain(Profile profile) => ProfileModel(
        displayName: profile.displayName,
        email: profile.email,
        profilePictureURL: profile.profilePictureURL,
      );
}
