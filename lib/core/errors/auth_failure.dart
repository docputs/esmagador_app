import 'package:equatable/equatable.dart';

class AuthFailure extends Equatable {
  final String errorMessage;

  const AuthFailure(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];

  @override
  String toString() => 'AuthFailure($errorMessage)';
}
