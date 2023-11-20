
import 'package:flutter/material.dart';

import '../../../../config/global_widgets/header_introduction.dart';

class WelcomeHeaderIntro extends StatelessWidget {
  const WelcomeHeaderIntro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const HeaderIntroduction(
        allPadding: 2,
        bottomPadding: 40,
        bigText: 'Create Account',
        smallText: 'Create a nea account');
  }
}