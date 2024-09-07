import 'package:flutter/material.dart';

@immutable
class AuthenticationValidator {
  const AuthenticationValidator._();

  static normalValidation(
    dynamic value,
  ) {
    if (value == null || value.isEmpty) {
      return const Text('Required field');
    }
    return null;
  }

  static emailValidation(dynamic email) {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);

    if (email == null || email.isEmpty || !emailValid) {
      return const Text('Please make sure the correct email or password.');
    }
    return null;
  }
}
