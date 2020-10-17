import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/profile_failure.dart';
import '../repositories/profile_repository.dart';

@lazySingleton
class ChangeEmailAddress {
  final IProfileRepository _repository;

  const ChangeEmailAddress(this._repository) : assert(_repository != null);

  Future<Either<ProfileFailure, Unit>> call(String email) {
    return Future.delayed(const Duration(seconds: 1));
  }
}
