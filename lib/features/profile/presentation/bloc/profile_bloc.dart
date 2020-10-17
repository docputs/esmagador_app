import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/profile_failure.dart';
import '../../domain/entities/profile.dart';
import '../../domain/usecases/fetch_profile_data.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final FetchProfileData fetchProfileData;

  ProfileBloc({
    @required this.fetchProfileData,
  }) : super(ProfileState.initial());

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield ProfileState.loading();
        final failureOrProfile = await fetchProfileData.call();
        yield failureOrProfile.fold(
          (f) => ProfileState.error(f),
          (profile) => ProfileState.success(profile),
        );
      },
    );
  }
}
