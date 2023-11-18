import 'package:flutter/material.dart';

import '../themes/app_styles.dart';

class FinalTexts extends StatelessWidget {
  const FinalTexts({
    super.key,
    required this.firstText,
    required this.followUpText, this.onFollowUpClick,
  });
  final String firstText;
  final String followUpText;
  final void Function ()? onFollowUpClick;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
