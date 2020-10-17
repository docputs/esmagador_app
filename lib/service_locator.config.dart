// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/auth/presentation/auth_bloc.dart';
import 'features/profile/domain/usecases/change_display_name.dart';
import 'features/profile/domain/usecases/change_email_address.dart';
import 'features/profile/domain/usecases/change_password.dart';
import 'features/profile/domain/usecases/change_profile_picture.dart';
import 'features/workout/presentation/create_workout/bloc/choose_exercise/choose_exercise_bloc.dart';
import 'features/workout/presentation/create_workout/bloc/create_workout_bloc.dart';
import 'features/profile/domain/usecases/delete_history.dart';
import 'features/workout/domain/usecases/delete_workout.dart';
import 'features/workout/domain/usecases/edit_workout.dart';
import 'features/profile/domain/usecases/fetch_profile_data.dart';
import 'features/profile/data/repositories/firebase_profile_repository.dart';
import 'features/auth/data/repositories/firebase_user_repository.dart';
import 'features/workout/data/repositories/firebase_workout_repository.dart';
import 'features/workout/domain/usecases/get_workout_list.dart';
import 'features/profile/data/datasources/profile_local_data_source.dart';
import 'features/profile/domain/repositories/profile_repository.dart';
import 'features/walkthrough/data/local_data_source.dart';
import 'features/profile/presentation/bloc/profile_actor/profile_actor_bloc.dart';
import 'features/profile/presentation/bloc/profile_bloc.dart';
import 'service_locator.dart';
import 'features/workout/domain/usecases/save_workout.dart';
import 'features/workout/presentation/create_workout/bloc/search_exercise_bloc/search_exercise_bloc.dart';
import 'features/walkthrough/usecases/show_walkthrough.dart';
import 'features/auth/domain/usecases/sign_in.dart';
import 'features/auth/presentation/sign_in/bloc/sign_in_bloc.dart';
import 'features/auth/domain/usecases/sign_in_with_google.dart';
import 'features/auth/domain/usecases/sign_up.dart';
import 'features/auth/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'features/auth/domain/repositories/user_repository.dart';
import 'features/auth/core/util/validators.dart';
import 'features/workout/domain/usecases/watch_workouts.dart';
import 'features/workout/presentation/workout_overview/bloc/workout_actor/workout_actor_bloc.dart';
import 'features/workout/presentation/workout_overview/bloc/workout_overview_bloc.dart';
import 'features/workout/domain/repositories/workout_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<ChangeProfilePicture>(() => ChangeProfilePicture());
  gh.lazySingleton<DeleteHistory>(() => DeleteHistory());
  gh.lazySingleton<FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => registerModule.firebaseFirestore);
  gh.lazySingleton<FirebaseStorage>(() => registerModule.firebaseStorage);
  gh.lazySingleton<GoogleSignIn>(() => registerModule.googleSignIn);
  gh.factory<SearchExerciseBloc>(() => SearchExerciseBloc());
  final sharedPreferences = await registerModule.prefs;
  gh.factory<SharedPreferences>(() => sharedPreferences);
  gh.lazySingleton<UserRepository>(
      () => FirebaseUserRepository(get<FirebaseAuth>(), get<GoogleSignIn>()));
  gh.lazySingleton<Validators>(() => Validators());
  gh.lazySingleton<WorkoutRepository>(() => FirebaseWorkoutRepository(
      firestore: get<FirebaseFirestore>(),
      userRepository: get<UserRepository>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<UserRepository>()));
  gh.lazySingleton<DeleteWorkout>(
      () => DeleteWorkout(get<WorkoutRepository>()));
  gh.lazySingleton<EditWorkout>(() => EditWorkout(get<WorkoutRepository>()));
  gh.lazySingleton<GetWorkoutList>(
      () => GetWorkoutList(get<WorkoutRepository>()));
  gh.lazySingleton<IProfileLocalDS>(
      () => ProfileLocalDS(get<SharedPreferences>()));
  gh.factory<IProfileRepository>(() => FirebaseProfileRepository(
        firebaseAuth: get<FirebaseAuth>(),
        storage: get<FirebaseStorage>(),
        profileLocalDS: get<IProfileLocalDS>(),
      ));
  gh.lazySingleton<LocalDataSource>(
      () => SharedLocalDataSource(get<SharedPreferences>()));
  gh.lazySingleton<SaveWorkout>(() => SaveWorkout(get<WorkoutRepository>()));
  gh.lazySingleton<ShowWalkthrough>(
      () => ShowWalkthrough(get<LocalDataSource>()));
  gh.lazySingleton<SignIn>(() => SignIn(
      validators: get<Validators>(), userRepository: get<UserRepository>()));
  gh.lazySingleton<SignInWithGoogle>(
      () => SignInWithGoogle(get<UserRepository>()));
  gh.lazySingleton<SignUp>(() => SignUp(get<UserRepository>()));
  gh.factory<SignUpBloc>(() => SignUpBloc(get<SignUp>(), get<Validators>()));
  gh.lazySingleton<WatchWorkouts>(
      () => WatchWorkouts(get<WorkoutRepository>()));
  gh.factory<WorkoutActorBloc>(() => WorkoutActorBloc(get<DeleteWorkout>()));
  gh.factory<WorkoutOverviewBloc>(
      () => WorkoutOverviewBloc(get<WatchWorkouts>()));
  gh.lazySingleton<ChangeDisplayName>(
      () => ChangeDisplayName(get<IProfileRepository>()));
  gh.lazySingleton<ChangeEmailAddress>(
      () => ChangeEmailAddress(get<IProfileRepository>()));
  gh.lazySingleton<ChangePassword>(
      () => ChangePassword(get<IProfileRepository>()));
  gh.factory<CreateWorkoutBloc>(() => CreateWorkoutBloc(get<SaveWorkout>()));
  gh.lazySingleton<FetchProfileData>(
      () => FetchProfileData(get<IProfileRepository>()));
  gh.factory<ProfileActorBloc>(() => ProfileActorBloc(
        changeDisplayName: get<ChangeDisplayName>(),
        changeEmailAddress: get<ChangeEmailAddress>(),
        changePassword: get<ChangePassword>(),
        changeProfilePicture: get<ChangeProfilePicture>(),
      ));
  gh.factory<ProfileBloc>(
      () => ProfileBloc(fetchProfileData: get<FetchProfileData>()));
  gh.factory<SignInBloc>(() => SignInBloc(
        signIn: get<SignIn>(),
        signInWithGoogle: get<SignInWithGoogle>(),
        validators: get<Validators>(),
      ));
  gh.factory<ChooseExerciseBloc>(
      () => ChooseExerciseBloc(get<CreateWorkoutBloc>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
