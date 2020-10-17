import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/profile_failure.dart';
import '../../domain/entities/profile.dart';
import '../../domain/repositories/profile_repository.dart';
import '../datasources/profile_local_data_source.dart';

@Injectable(as: IProfileRepository)
class FirebaseProfileRepository implements IProfileRepository {
  final FirebaseAuth firebaseAuth;
  final FirebaseStorage storage;
  final IProfileLocalDS profileLocalDS;

  const FirebaseProfileRepository({
    @required this.firebaseAuth,
    @required this.storage,
    @required this.profileLocalDS,
  }) : assert(firebaseAuth != null, storage != null);

  @override
  Future<Either<ProfileFailure, Unit>> changeDisplayName(
      String displayName) async {
    try {
      await firebaseAuth.currentUser.updateProfile(displayName: displayName);
      await profileLocalDS.clearProfileData();
      return right(unit);
    } on FirebaseAuthException catch (e) {
      print(e);
      return left(const ProfileFailure.serverError());
    } catch (e) {
      print(e);
      return left(const ProfileFailure.unknownError());
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> changeEmailAddress(
      String emailAddress) async {
    try {
      await firebaseAuth.currentUser.updateEmail(emailAddress);
      await profileLocalDS.clearProfileData();
      return right(unit);
    } on FirebaseAuthException catch (e) {
      print(e);
      return left(const ProfileFailure.serverError());
    } catch (e) {
      print(e);
      return left(const ProfileFailure.unknownError());
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> changePassword(String password) async {
    try {
      await firebaseAuth.currentUser.updatePassword(password);
      await profileLocalDS.clearProfileData();

      return right(unit);
    } on FirebaseAuthException catch (e) {
      print(e);
      if (e.code == 'requires-recent-login') {
        return left(const ProfileFailure.requiresRecentLogin());
      } else {
        return left(const ProfileFailure.serverError());
      }
    } catch (e) {
      print(e);
      return left(const ProfileFailure.unknownError());
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> changeProfilePicture(File imageFile) {
    // TODO: implement changeProfilePicture
    throw UnimplementedError();
  }

  @override
  Future<Either<ProfileFailure, Profile>> fetchProfileData() async {
    Profile profile;
    final profileOption = await profileLocalDS.getProfileData();
    return profileOption.fold(
      () async {
        final user = firebaseAuth.currentUser;
        try {
          final String profilePicture = await storage
              .ref()
              .child('profile_pictures')
              ?.child(user.uid + '.jpg')
              ?.getDownloadURL();
          profile = Profile(
            displayName: user.displayName,
            email: user.email,
            profilePictureURL: profilePicture,
          );
          profileLocalDS.saveProfileData(profile);
          return right(profile);
        } on PlatformException catch (e) {
          print(e);
          if (e.code == 'download_error') {
            profile = Profile(
              displayName: user.displayName,
              email: user.email,
              profilePictureURL: null,
            );
            profileLocalDS.saveProfileData(profile);
            return right(profile);
          } else {
            return left(const ProfileFailure.serverError());
          }
        } catch (e) {
          print(e);
          return left(const ProfileFailure.unknownError());
        }
      },
      (profile) => right(profile),
    );
  }
}
