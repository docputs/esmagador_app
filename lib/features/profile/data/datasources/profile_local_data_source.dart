import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/entities/profile.dart';
import '../models/profile_model.dart';

abstract class IProfileLocalDS {
  Future<Option<Profile>> getProfileData();
  Future<void> saveProfileData(Profile profile);
  Future<void> clearProfileData();
}

@LazySingleton(as: IProfileLocalDS)
class ProfileLocalDS implements IProfileLocalDS {
  final SharedPreferences _sharedPreferences;

  const ProfileLocalDS(this._sharedPreferences);

  @override
  Future<Option<Profile>> getProfileData() async {
    if (_sharedPreferences.containsKey('profileData')) {
      final profileData = await _sharedPreferences.getString('profileData');
      return optionOf(ProfileModel.fromJson(profileData));
    } else {
      return none();
    }
  }

  @override
  Future<void> saveProfileData(Profile profile) async {
    final profileModel = ProfileModel.fromDomain(profile);
    await _sharedPreferences.setString('profileData', profileModel.toJson());
  }

  @override
  Future<void> clearProfileData() async {
    await _sharedPreferences.remove('profileData');
  }
}
