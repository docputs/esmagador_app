part of 'profile_actor_bloc.dart';

@freezed
abstract class ProfileActorEvent with _$ProfileActorEvent {
  const factory ProfileActorEvent.changeDisplayNamePressed(String displayName) =
      _ChangeDisplayNamePressed;
  const factory ProfileActorEvent.changeEmailAddressPressed(
      String emailAddress) = _ChangeEmailAddressPressed;
  const factory ProfileActorEvent.changeProfilePicturePressed() =
      _ChangeProfilePicturePressed;
  const factory ProfileActorEvent.changePasswordPressed(String password) =
      _ChangePasswordPressed;
}
