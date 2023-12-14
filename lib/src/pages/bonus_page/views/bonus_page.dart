import 'package:flutter/material.dart';
import 'package:form_validation_test/src/config/themes/app_styles.dart';


class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Welcome Back USER',
          style: AppStyles.subheaderStyle,
        ),
      ),
    );
  }
}
