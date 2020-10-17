part of 'profile_actor_bloc.dart';

@freezed
abstract class ProfileActorState with _$ProfileActorState {
  const factory ProfileActorState.initial() = _Initial;
  const factory ProfileActorState.success() = _Success;
  const factory ProfileActorState.failure(ProfileFailure failure) = _Failure;
}
