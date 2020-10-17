import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/profile_failure.dart';
import '../../../domain/usecases/change_display_name.dart';
import '../../../domain/usecases/change_email_address.dart';
import '../../../domain/usecases/change_password.dart';
import '../../../domain/usecases/change_profile_picture.dart';

part 'profile_actor_bloc.freezed.dart';
part 'profile_actor_event.dart';
part 'profile_actor_state.dart';

@injectable
class ProfileActorBloc extends Bloc<ProfileActorEvent, ProfileActorState> {
  final ChangeEmailAddress changeEmailAddress;
  final ChangePassword changePassword;
  final ChangeDisplayName changeDisplayName;
  final ChangeProfilePicture changeProfilePicture;

  ProfileActorBloc({
    @required this.changeDisplayName,
    @required this.changeEmailAddress,
    @required this.changePassword,
    @required this.changeProfilePicture,
  }) : super(_Initial());

  @override
  Stream<ProfileActorState> mapEventToState(
    ProfileActorEvent event,
  ) async* {
    yield* event.map(
      changeDisplayNamePressed: (e) async* {
        final failureOrSuccess = await changeDisplayName.call(e.displayName);
        yield failureOrSuccess.fold(
          (f) => ProfileActorState.failure(f),
          (_) => const ProfileActorState.success(),
        );
      },
      changeEmailAddressPressed: (e) async* {
        final failureOrSuccess = await changeEmailAddress.call(e.emailAddress);
        yield failureOrSuccess.fold(
          (f) => ProfileActorState.failure(f),
          (_) => const ProfileActorState.success(),
        );
      },
      changeProfilePicturePressed: (e) async* {},
      changePasswordPressed: (e) async* {
        final failureOrSuccess = await changePassword.call(e.password);
        yield failureOrSuccess.fold(
          (f) => ProfileActorState.failure(f),
          (_) => const ProfileActorState.success(),
        );
      },
    );
  }
}
