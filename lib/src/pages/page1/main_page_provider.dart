import 'package:flutter/material.dart';

class MainPageProvider {
  MainPageProvider(BuildContext context);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  void onChangedEmail(String value) {
    debugPrint(value);
  }

  void onChangedPassword(String value) {
    debugPrint(value);
  }

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) return "required";
    String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    bool isValidEmail = RegExp(pattern).hasMatch(value);
    if (!isValidEmail) return "a valid email is required";
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) return "Password is required";
    if (value.length < 8) return "Password must be at least 8 characters long";

    return null;
  }

  bool areFieldsValid() {
  return emailValidator(emailController.text) == null &&
      passwordValidator(passwordController.text) == null;
}
}
