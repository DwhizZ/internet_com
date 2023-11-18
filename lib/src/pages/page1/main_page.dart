import 'package:flutter/material.dart';
import 'package:form_validation_test/src/config/routes/route_name.dart';
import 'package:form_validation_test/src/pages/page1/components/main_page_provider.dart';
import 'package:provider/provider.dart';
import '../../config/global_widgets/final_texts.dart';
import '../../config/global_widgets/header_introduction.dart';
import '../../config/global_widgets/my_elevated_button.dart';
import 'components/forget_password_line.dart';
import 'components/main_page_text_fields.dart';

// TODO: Well done Saheed, you're doing really well.
//TODO: Increase your widget composition.
// This basically means you should extract more widgets so that it'll be easy for people to read
// Always have it in mind that your code is not for you
// I'll give you an example, apply it to the other page.
// The extractions I did have reduced the lines of code and made it easier to read
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.read<MainPageProvider>();
    return SafeArea(
      child: Scaffold(
        //TODO: Use a [ListView] instead, it is more memory efficient
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AppLogo(),
                const WelcomeBackAndSignInText(),
                //TODO: you don't need to pass a provider into the widget,
                // the provider can still be accessed from inside the widget
                // check the LoginButton
                MainPageTextFields(provider: provider),
                const ForgetPasswordLine(), // very good
                const LoginButton(),
                const CreateAccountTextButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//TODO: put all these extracted widgets in their appropraite file in the components folder
class CreateAccountTextButton extends StatelessWidget {
  const CreateAccountTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FinalTexts(
      firstText: 'Dont have account?',
      followUpText: 'Create a new account?',
      onFollowUpClick: () {
        //TODO: Don't write state (variables or methods) in your UI.
        // Extract this method and put it in your provider
        Navigator.pushNamed(context, RouteName.secondPage);
      },
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.read<MainPageProvider>();
    return Padding(
      padding: const EdgeInsets.only(bottom: 35),
      //TODO: Column is not necessary because it has only one child
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MyElevatedButton(
            buttonText: 'LOGIN',
            onButtonClick: () {
              //TODO: Don't write state (variables or methods) in your UI.
              // Extract this method and put it in your provider
              if (provider.areFieldsValid()) {
                Navigator.pushNamed(context, RouteName.secondPage);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content:
                        Text('Please fill in all required fields correctly.'),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}

class WelcomeBackAndSignInText extends StatelessWidget {
  const WelcomeBackAndSignInText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const HeaderIntroduction(
      allPadding: 8,
      bottomPadding: 60,
      bigText: 'Welcome Back',
      smallText: 'Sign in to continue',
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          //TODO: wrap this in a CircleAvatar:
          // child: CircleAvatar(backgroundImage: AssetImage('images/app_logo.jpg')),
          child: Image.asset('images/app_logo.jpg', width: 150),
        ),
      ],
    );
  }
}
