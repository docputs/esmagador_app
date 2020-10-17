import 'package:dartz/dartz.dart';
import 'package:esmagador/features/profile/core/error/profile_failure.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DeleteHistory {
  Future<Either<ProfileFailure, Unit>> call() {}
}
