import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class EmailAdress extends Equatable {
  final String value;

  factory EmailAdress(String input) {
    assert(input != null);
    return EmailAdress._(validateEmailAdress(input));
  }

  EmailAdress._(this.value);

  @override
  List<Object> get props => [value];
}

String validateEmailAdress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input))
    return input;
  else
    throw InvalidEmailAdressException(failedValue: input);
}

class InvalidEmailAdressException implements Exception {
  final String failedValue;

  const InvalidEmailAdressException({@required this.failedValue});
}
