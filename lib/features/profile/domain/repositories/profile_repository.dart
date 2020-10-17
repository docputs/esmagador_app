import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../core/error/profile_failure.dart';
import '../entities/profile.dart';

abstract class IProfileRepository {
  Future<Either<ProfileFailure, Unit>> changeDisplayName(String displayName);
  Future<Either<ProfileFailure, Unit>> changeEmailAddress(String emailAddress);
  Future<Either<ProfileFailure, Unit>> changePassword(String password);
  Future<Either<ProfileFailure, Unit>> changeProfilePicture(File imageFile);
  Future<Either<ProfileFailure, Profile>> fetchProfileData();
}
