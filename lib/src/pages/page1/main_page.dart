import 'package:flutter/material.dart';
import 'package:form_validation_test/src/config/routes/route_name.dart';
import 'package:form_validation_test/src/config/themes/app_styles.dart';
import 'package:form_validation_test/src/pages/page1/main_page_provider.dart';
import 'package:provider/provider.dart';

import '../../config/global_widgets/text_inputs_field.dart';

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
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Welcome Back', style: AppStyles.headerStyle),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 60),
                  child: Text('Sign in to Continue',
                      style: AppStyles.subheaderStyle),
                ),
                TextinputsField(
                    label: 'Email',
                    hint: 'user123@gmail.com',
                    controller: provider.emailController,
                    onChanged: provider.onChangedEmail,
                    validator: provider.emailValidator,
                    myIcon: Icons.email_outlined),
                TextinputsField(
                    label: 'Password',
                    controller: provider.passwordController,
                    myIcon: Icons.lock,
                    hint: '*********',
                    obscureText: true,
                    onChanged: provider.onChangedPassword,
                    validator: provider.passwordValidator),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          'Forget Password?',
                          style: AppStyles.subheaderStyle
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        onPressed: () {
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
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 61, 12, 196),
                          minimumSize: const Size.fromHeight(50),
                        ),
                        child: const Text('LOGIN'),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont have account?',
                      style: AppStyles.subheaderStyle
                          .copyWith(color: Colors.black),
                    ),
                    Text(
                      ' Create a new account?',
                      style: AppStyles.subheaderStyle
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
