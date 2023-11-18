import 'package:flutter/material.dart';
import 'package:form_validation_test/src/config/global_widgets/final_texts.dart';
import 'package:form_validation_test/src/config/global_widgets/header_introduction.dart';
import 'package:form_validation_test/src/config/global_widgets/my_elevated_button.dart';
import 'package:form_validation_test/src/config/global_widgets/text_inputs_field.dart';
import 'package:form_validation_test/src/pages/page2/components/second_page_provider.dart';
import 'package:provider/provider.dart';
import 'components/my_back_button.dart';
import 'components/second_page_text_fields.dart';

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
                const MyBackButton(),
                const HeaderIntroduction(
                    allPadding: 2,
                    bottomPadding: 40,
                    bigText: 'Create Account',
                    smallText: 'Create a nea account'),
                SecondPageTextFields(provider: provider),
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
                  child: MyElevatedButton(
                    onButtonClick: () {},
                    buttonText: 'CREATE ACCOUNT',
                  ),
                ),
                FinalTexts(
                    firstText: 'Already have an account?',
                    followUpText: 'Login',
                    onFollowUpClick: () {
                      Navigator.pop(context);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
