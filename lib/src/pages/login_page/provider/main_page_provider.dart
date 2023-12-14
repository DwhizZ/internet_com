import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../config/routes/route_name.dart';
import '../../../global/utils/toast.dart';

//done: This provider is located in the wrong folder.
// It is not a widget component, it should have it's own folder called "providers"
class MainPageProvider {
  MainPageProvider(this.context);

  BuildContext context;

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  //noted: I guess this was for development purposes,
  // remove it when you're done testing to keep your code more efficient
  void onChangedEmail(String value) {
    debugPrint(value);
  }

  //noted sir: I guess this was for development purposes,
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

  //Done: You can increase the the strength of your password:
  // also include checks for capital and small letters, special characters, and numbers

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }

    if (value.length < 8) {
      return "Password must be at least 8 characters long";
    }

    // Check for at least one uppercase letter
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return "Password must contain at least one uppercase letter";
    }

    // Check for at least one lowercase letter
    if (!value.contains(RegExp(r'[a-z]'))) {
      return "Password must contain at least one lowercase letter";
    }

    // Check for at least one digit
    if (!value.contains(RegExp(r'[0-9]'))) {
      return "Password must contain at least one digit";
    }
    return null;

    // // Check for at least one special character
    // if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
    //   return "Password must contain at least one special character";
    // }

    // return null;
  }

  // Done: I see what you did, well done. You can make this a getter instead
  // Something like this:
  // bool get areFieldsValid {
  //   return emailValidator(emailController.text) == null &&
  //       passwordValidator(passwordController.text) == null;
  // }
  bool get areFieldsValid {
    return emailValidator(emailController.text) == null &&
        passwordValidator(passwordController.text) == null;
  }

  void fieldValidate() {
    //Done: Don't write state (variables or methods) in your UI.
    // Extract this method and put it in your provider
    if (areFieldsValid) {
      Navigator.pushNamed(context, RouteName.secondPage);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill in all required fields correctly.'),
        ),
      );
    }
  }

  void onAccountLogIN() async {
    try {
      showLoading();
      
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // ignore: use_build_context_synchronously
      Navigator.pushNamed(context, RouteName.bonusPage);

      cancelLoading();
    } on Exception catch (e, s) {
      cancelLoading();
      debugPrint('$e');
      debugPrint('$s');
      showToast(e.toString());
    }
  }
}
