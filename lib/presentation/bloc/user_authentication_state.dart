part of 'user_authentication_bloc.dart';

abstract class UserAuthenticationState extends Equatable {
  const UserAuthenticationState();

  @override
  List<Object> get props => [];
}

class UserAuthenticationInitial extends UserAuthenticationState {}

class UserAuthenticationAuthenticated extends UserAuthenticationState {
  final AuthenticatedUser authenticatedUser;

  const UserAuthenticationAuthenticated(this.authenticatedUser);
}

class UserAuthenticationUnauthenticated extends UserAuthenticationState {}

class UserAuthenticationError extends UserAuthenticationState {
  final String errorMessage;

  const UserAuthenticationError(this.errorMessage);
}
