import 'package:flutter/material.dart';
import 'package:form_validation_test/src/pages/create_account_page/provider/second_page_provider.dart';
import 'package:provider/provider.dart';
import 'components/closing_line_texts.dart';
import 'components/create_acct_button.dart';
import 'components/my_back_button.dart';
import 'components/second_page_text_fields.dart';
import 'components/welcome_header_intro.dart';

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
                const WelcomeHeaderIntro(),
                SecondPageTextFields(provider: provider),
                const CreateAccountButton(),
                const ClosingLineTexts(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
