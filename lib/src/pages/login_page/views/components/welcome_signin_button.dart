import 'package:flutter/material.dart';

import '../../../../config/global_widgets/header_introduction.dart';

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