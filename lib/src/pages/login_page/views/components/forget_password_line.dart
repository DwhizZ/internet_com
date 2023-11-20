import 'package:flutter/material.dart';

import '../../../../config/themes/app_styles.dart';

class ForgetPasswordLine extends StatelessWidget {
  const ForgetPasswordLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: InkWell(
            onTap: () {},
            child: Text(
              'Forget Password?',
              style: AppStyles.subheaderStyle
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
