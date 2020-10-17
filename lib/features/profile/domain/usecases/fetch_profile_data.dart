import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/profile_failure.dart';
import '../entities/profile.dart';
import '../repositories/profile_repository.dart';

@lazySingleton
class FetchProfileData {
  final IProfileRepository _repository;

  const FetchProfileData(this._repository) : assert(_repository != null);

  Future<Either<ProfileFailure, Profile>> call() {
    return _repository.fetchProfileData();
  }
}
