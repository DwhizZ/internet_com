import 'package:flutter/material.dart';

import '../themes/app_styles.dart';

class FinalTexts extends StatelessWidget {
  const FinalTexts({
    super.key,
    required this.firstText,
    required this.followUpText,
    this.onFollowUpClick,
  });
  final String firstText;
  final String followUpText;
  final void Function()? onFollowUpClick;

  @override
  Widget build(BuildContext context) {
    // TODO: Check out this wrap widget... 
    // study the docs on it, and see what it does
    return Wrap(
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          firstText,
          style: AppStyles.subheaderStyle.copyWith(color: Colors.black),
        ),
        InkWell(
          onTap: onFollowUpClick,
          child: Text(
            followUpText,
            style:
                AppStyles.subheaderStyle.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
