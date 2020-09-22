import 'package:esmagador/features/auth/domain/usecases/sign_in_with_google.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'features/auth/core/util/email_validator.dart';
import 'features/auth/data/repositories/firebase_user_repository.dart';
import 'features/auth/domain/repositories/user_repository.dart';
import 'features/auth/domain/usecases/sign_in.dart';
import 'features/auth/presentation/auth_bloc.dart';
import 'features/auth/presentation/sign_in/bloc/sign_in_bloc.dart';
import 'features/auth/presentation/sign_up/bloc/sign_up_bloc.dart';

final sl = GetIt.instance;

void init() {
  // FEATURES - AUTHENTICATION

  // BLoC
  sl.registerFactory(() => AuthBloc(sl()));
  sl.registerFactory(() => SignInBloc(signIn: sl(), signInWithGoogle: sl()));
  sl.registerFactory(() => SignUpBloc(sl()));

  // Use cases
  sl.registerLazySingleton(() => SignIn(validator: sl(), userRepository: sl()));
  sl.registerLazySingleton(() => SignInWithGoogle(sl()));

  // Repositories
  sl.registerLazySingleton<UserRepository>(
      () => FirebaseUserRepository(sl(), sl()));

  // Datasources

  // CORE
  sl.registerLazySingleton(() => EmailValidator());

  // EXTERNAL
  sl.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  sl.registerLazySingleton<GoogleSignIn>(() => GoogleSignIn());
}
