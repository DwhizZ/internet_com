import 'package:flutter/material.dart';
import 'components/log_in_button.dart';
import 'components/app_logo.dart';
import 'components/create_acct_text_button.dart';
import 'components/forget_password_line.dart';
import 'components/main_page_text_fields.dart';
import 'components/welcome_signin_button.dart';

// : Well done Saheed, you're doing really well.
//noted: Increase your widget composition.
// This basically means you should extract more widgets so that it'll be easy for people to read
// Always have it in mind that your code is not for you
// I'll give you an example, apply it to the other page.
// The extractions I did have reduced the lines of code and made it easier to read
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        //done: Use a [ListView] instead, it is more memory efficient
        body: ListView(
          children: const[
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   AppLogo(),
                  WelcomeBackAndSignInText(),
                  //done: you don't need to pass a provider into the widget,
                  // the provider can still be accessed from inside the widget
                  // check the LoginButton
                  MainPageTextFields(),
                  ForgetPasswordLine(), // very good
                   LoginButton(),
                  CreateAccountTextButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}





