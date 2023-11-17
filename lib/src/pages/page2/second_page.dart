import 'package:flutter/material.dart';
import 'package:form_validation_test/src/config/global_widgets/text_inputs_field.dart';
import 'package:form_validation_test/src/config/themes/app_styles.dart';
import 'package:form_validation_test/src/pages/page2/second_page_provider.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.read<SecondPageProvider>();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_outlined,
                          color: Color.fromARGB(255, 61, 12, 196),
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(2),
                  child: Text('Create Account', style: AppStyles.headerStyle),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Text(
                    'Create a new account',
                    style:
                        AppStyles.subheaderStyle.copyWith(color: Colors.black),
                  ),
                ),
                TextinputsField(
                  controller: provider.nameController,
                  label: 'NAME',
                  myIcon: Icons.account_circle_outlined,
                  onChanged: provider.onChangedName,
                  hint: 'user123@gmail.com',
                  validator: provider.nameValidator,
                ),
                TextinputsField(
                  controller: provider.emailController,
                  label: 'EMAIL',
                  myIcon: Icons.email_outlined,
                  onChanged: provider.onChangedEmail,
                  hint: 'user123@gmail.com',
                  validator: provider.emailValidator,
                ),
                TextinputsField(
                  controller: provider.phoneNumber,
                  label: 'PHONE',
                  myIcon: Icons.phone_android_outlined,
                  onChanged: provider.onChangedPhoneNumber,
                  hint: '+91 9844545609',
                  validator: provider.numberValidator,
                ),
                TextinputsField(
                  controller: provider.password,
                  label: 'PASSWORD',
                  myIcon: Icons.lock_outline,
                  onChanged: provider.onChangedPassword,
                  hint: '**********',
                  validator: provider.passwordValidator,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: TextinputsField(
                    controller: provider.password2,
                    label: 'CONFIRM  PASSWORD',
                    myIcon: Icons.lock_outline,
                    onChanged: provider.onChangedPassword2,
                    hint: '**********',
                    validator: provider.passwordValidator2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 61, 12, 196),
                      minimumSize: const Size.fromHeight(50),
                    ),
                    child: const Text('CREATE ACCOUNT'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: AppStyles.subheaderStyle
                          .copyWith(color: Colors.black),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        ' Login',
                        style: AppStyles.subheaderStyle
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
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
