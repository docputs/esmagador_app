import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/profile_failure.dart';
import '../repositories/profile_repository.dart';

@lazySingleton
class ChangePassword {
  final IProfileRepository _repository;

  const ChangePassword(this._repository) : assert(_repository != null);

  Future<Either<ProfileFailure, Unit>> call(String password) {
    return _repository.changePassword(password);
  }
}
