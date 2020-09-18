import 'package:equatable/equatable.dart';

abstract class AuthFailure extends Equatable {
  final String message;

  const AuthFailure(this.message);

  @override
  String toString() => 'AuthFailure($message)';

  @override
  List<Object> get props => [message];
}
