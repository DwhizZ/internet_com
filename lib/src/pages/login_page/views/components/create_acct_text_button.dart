import 'package:flutter/material.dart';

import '../../../../config/global_widgets/final_texts.dart';
import '../../../../config/routes/route_name.dart';

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
        //noted: Don't write state (variables or methods) in your UI.
        // Extract this method and put it in your provider
        Navigator.pushNamed(context, RouteName.secondPage);
      },
    );
  }
}