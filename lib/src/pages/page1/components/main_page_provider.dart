import 'package:flutter/material.dart';

//TODO: This provider is located in the wrong folder.
// It is not a widget component, it should have it's own folder called "providers"
class MainPageProvider {
  MainPageProvider(BuildContext context);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  //TODO: I guess this was for development purposes,
  // remove it when you're done testing to keep your code more efficient
  void onChangedEmail(String value) {
    debugPrint(value);
  }

  //TODO: I guess this was for development purposes,
  // remove it when you're done testing to keep your code more efficient
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

  //TODO: You can increase the the strength of your password:
  // also include checks for capital and small letters, special characters, and numbers
  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) return "Password is required";
    if (value.length < 8) return "Password must be at least 8 characters long";

    return null;
  }

  // TODO: I see what you did, well done. You can make this a getter instead
  // Something like this:
  // bool get areFieldsValid {
  //   return emailValidator(emailController.text) == null &&
  //       passwordValidator(passwordController.text) == null;
  // }
  bool areFieldsValid() {
    return emailValidator(emailController.text) == null &&
        passwordValidator(passwordController.text) == null;
  }
}
