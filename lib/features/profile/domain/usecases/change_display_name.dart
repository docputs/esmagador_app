import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/profile_failure.dart';
import '../repositories/profile_repository.dart';

@lazySingleton
class ChangeDisplayName {
  final IProfileRepository _repository;

  const ChangeDisplayName(this._repository);

  Future<Either<ProfileFailure, Unit>> call(String displayName) {
    return _repository.changeDisplayName(displayName);
  }
}
