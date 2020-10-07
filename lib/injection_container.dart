import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:esmagador/features/workout/presentation/workout_overview/bloc/workout_overview_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/auth/core/util/validators.dart';
import 'features/auth/data/repositories/firebase_user_repository.dart';
import 'features/auth/domain/repositories/user_repository.dart';
import 'features/auth/domain/usecases/sign_in.dart';
import 'features/auth/domain/usecases/sign_in_with_google.dart';
import 'features/auth/domain/usecases/sign_up.dart';
import 'features/auth/presentation/auth_bloc.dart';
import 'features/auth/presentation/sign_in/bloc/sign_in_bloc.dart';
import 'features/auth/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'features/walkthrough/data/local_data_source.dart';
import 'features/walkthrough/usecases/show_walkthrough.dart';
import 'features/workout/data/repositories/firebase_workout_repository.dart';
import 'features/workout/domain/repositories/workout_repository.dart';
import 'features/workout/domain/usecases/save_workout.dart';
import 'features/workout/domain/usecases/watch_workouts.dart';
import 'features/workout/presentation/create_workout/bloc/choose_exercise/choose_exercise_bloc.dart';
import 'features/workout/presentation/create_workout/bloc/create_workout_bloc.dart';
import 'features/workout/presentation/create_workout/bloc/search_exercise_bloc/search_exercise_bloc.dart';

final sl = GetIt.instance;

void init() {
  // FEATURES - AUTHENTICATION

  // BLoC
  sl.registerFactory(() => AuthBloc(sl()));
  sl.registerFactory(
      () => SignInBloc(signIn: sl(), signInWithGoogle: sl(), validators: sl()));
  sl.registerFactory(() => SignUpBloc(sl(), sl()));
  sl.registerFactory(() => CreateWorkoutBloc(sl()));
  sl.registerFactory(() => SearchExerciseBloc());
  sl.registerFactory(() => ChooseExerciseBloc(sl()));
  sl.registerFactory(() => WorkoutOverviewBloc(sl()));

  // Use cases
  sl.registerLazySingleton(
      () => SignIn(validators: sl(), userRepository: sl()));
  sl.registerLazySingleton(() => SignUp(sl()));
  sl.registerLazySingleton(() => SignInWithGoogle(sl()));
  sl.registerLazySingleton(() => ShowWalkthrough(sl()));
  sl.registerLazySingleton(() => SaveWorkout(sl()));
  sl.registerLazySingleton(() => WatchWorkouts(sl()));

  // Repositories
  sl.registerLazySingleton<UserRepository>(
      () => FirebaseUserRepository(sl(), sl()));
  sl.registerLazySingleton<WorkoutRepository>(
      () => FirebaseWorkoutRepository(firestore: sl(), userRepository: sl()));

  // Datasources
  sl.registerLazySingleton<LocalDataSource>(() => SharedLocalDataSource(sl()));

  // CORE
  sl.registerLazySingleton(() => Validators());

  // EXTERNAL
  sl.registerSingletonAsync<SharedPreferences>(
      () async => SharedPreferences.getInstance());
  sl.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  sl.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);
  sl.registerLazySingleton<GoogleSignIn>(() => GoogleSignIn());
}
