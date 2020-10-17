import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_failure.freezed.dart';

@freezed
abstract class ProfileFailure with _$ProfileFailure {
  const factory ProfileFailure.serverError() = _ServerError;
  const factory ProfileFailure.unknownError() = _UnknownError;
  const factory ProfileFailure.insufficientPermissions() =
      _InsufficientPermissions;
  const factory ProfileFailure.invalidPicture() = _InvalidPicture;
  const factory ProfileFailure.invalidEmailAddress() = _InvalidEmailAddress;
  const factory ProfileFailure.requiresRecentLogin() = _RequiresRecentLogin;
}
