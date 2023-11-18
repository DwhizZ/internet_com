import 'package:flutter/material.dart';
import 'package:form_validation_test/src/config/routes/route_name.dart';
import 'package:form_validation_test/src/config/themes/app_styles.dart';
import 'package:form_validation_test/src/pages/page1/components/main_page_provider.dart';
import 'package:provider/provider.dart';
import '../../config/global_widgets/final_texts.dart';
import '../../config/global_widgets/header_introduction.dart';
import '../../config/global_widgets/my_elevated_button.dart';
import 'components/forget_password_line.dart';
import 'components/main_page_text_fields.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.read<MainPageProvider>();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('images/app_logo.jpg', width: 150),
                    ),
                  ],
                ),
                const HeaderIntroduction(
                    allPadding: 8,
                    bottomPadding: 60,
                    bigText: 'Welcome Back',
                    smallText: 'Sign in to continue'),
                MainPageTextFields(provider: provider),
                const ForgetPasswordLine(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      MyElevatedButton(
                        buttonText: 'LOGIN',
                        onButtonClick: () {
                          if (provider.areFieldsValid()) {
                            Navigator.pushNamed(context, RouteName.secondPage);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    'Please fill in all required fields correctly.'),
                              ),
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ),
                FinalTexts(
                  firstText: 'Dont have account?',
                  followUpText: 'Create a new account?',
                  onFollowUpClick: () {
                    Navigator.pushNamed(context, RouteName.secondPage);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
