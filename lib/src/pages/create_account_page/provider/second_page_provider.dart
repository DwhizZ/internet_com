import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_validation_test/src/global/utils/toast.dart';

//DOne: This provider is located in the wrong folder.
// It is not a widget component, it should have it's own folder called "providers"
class SecondPageProvider {
  SecondPageProvider(BuildContext context);

  var nameController = TextEditingController();
  void onChangedName(String value) {
    debugPrint(value);
  }

  void onChangedEmail(String value) {
    debugPrint(value);
  }

  void onChangedPhoneNumber(String value) {
    debugPrint(value);
  }

  void onChangedPassword(String value) {
    debugPrint(value);
  }

  void onChangedPassword2(String value) {
    debugPrint(value);
  }

  var emailController = TextEditingController();
  var phoneNumber = TextEditingController();
  var password = TextEditingController();
  var password2 = TextEditingController();
  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) return "required";
    String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    bool isValidEmail = RegExp(pattern).hasMatch(value);
    if (!isValidEmail) return "a valid email is required";
    return null;
  }

  String? nameValidator(String? value) {
    if (value!.length <= 2 || value.isEmpty) {
      return "name cant be this short";
    }
    return null;
  }

  String? numberValidator(String? value) {
    if (value == null || value.isEmpty) return "required";
    int? number = int.tryParse(value);
    if (number == null) return 'enter a valid phone number';
    if (value.length != 11) return 'phoneNumber must be 11 digits';
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) return "Password is required";
    if (value.length < 8) return "Password must be at least 8 characters long";

    return null;
  }

  String? passwordValidator2(String? value) {
    if (value == null || value.isEmpty) {
      return "Password confirmation is required";
    }
    if (value != password.text) return "Passwords do not match";
    return null;
  }

  void onCreateAccount() async {
    try {
      showLoading();
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: password.text,
      );
      cancelLoading();
    } on Exception catch (e, s) {
      cancelLoading();
      debugPrint('$e');
      debugPrint('$s');
      showToast(e.toString());
    }
  }
}
