import 'package:flutter/material.dart';

import '../themes/app_styles.dart';

class HeaderIntroduction extends StatelessWidget {
  const HeaderIntroduction({
    super.key,
    required this.allPadding,
    required this.bottomPadding,
    required this.bigText,
    required this.smallText,
  });

  final double allPadding;
  final double bottomPadding;
  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(allPadding),
          child: Text(bigText, style: AppStyles.headerStyle),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: bottomPadding),
          child: Text(smallText, style: AppStyles.subheaderStyle),
        ),
      ],
    );
  }
}
