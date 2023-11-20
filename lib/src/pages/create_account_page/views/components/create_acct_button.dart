
import 'package:flutter/material.dart';

import '../../../../config/global_widgets/my_elevated_button.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: MyElevatedButton(
        onButtonClick: () {},
        buttonText: 'CREATE ACCOUNT',
      ),
    );
  }
}