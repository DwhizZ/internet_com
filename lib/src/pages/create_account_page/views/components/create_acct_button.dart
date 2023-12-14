import 'package:flutter/material.dart';
import 'package:form_validation_test/src/pages/create_account_page/provider/second_page_provider.dart';
import 'package:provider/provider.dart';

import '../../../../config/global_widgets/my_elevated_button.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var provider = context.read<SecondPageProvider>();
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: MyElevatedButton(
        onButtonClick: provider.onCreateAccount,
        buttonText: 'CREATE ACCOUNT',
      ),
    );
  }
}
