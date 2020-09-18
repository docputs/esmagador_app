import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

import 'features/auth/core/util/email_validator.dart';
import 'features/auth/data/repositories/firebase_user_repository.dart';
import 'features/auth/domain/repositories/user_repository.dart';
import 'features/auth/domain/usecases/sign_in.dart';
import 'features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'features/auth/presentation/blocs/sign_in_bloc/sign_in_bloc.dart';

final sl = GetIt.instance;

void init() {
  // FEATURES - AUTHENTICATION

  // BLoC
  sl.registerFactory(() => AuthBloc(sl()));
  sl.registerFactory(
      () => SignInBloc(authBloc: sl(), signIn: sl(), emailValidator: sl()));
  // sl.registerFactory(() => SignUpBloc(userRepository));

  // Use cases
  sl.registerLazySingleton(() => SignIn(sl()));

  // Repositories
  sl.registerLazySingleton<UserRepository>(() => FirebaseUserRepository(sl()));

  // Datasources

  // CORE
  sl.registerLazySingleton(() => EmailValidator());

  // EXTERNAL
  sl.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
}
