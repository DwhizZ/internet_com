

import 'package:flutter/material.dart';

import '../../../../config/global_widgets/final_texts.dart';

class ClosingLineTexts extends StatelessWidget {
  const ClosingLineTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FinalTexts(
        firstText: 'Already have an account?',
        followUpText: 'Login',
        onFollowUpClick: () {
          Navigator.pop(context);
        });
  }
}