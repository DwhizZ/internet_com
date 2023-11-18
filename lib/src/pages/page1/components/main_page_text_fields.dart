
import 'package:flutter/material.dart';

import '../../../config/global_widgets/text_inputs_field.dart';
import 'main_page_provider.dart';

class MainPageTextFields extends StatelessWidget {
  const MainPageTextFields({
    super.key,
    required this.provider,
  });

  final MainPageProvider provider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextinputsField(
            label: 'Email',
            hint: 'user123@gmail.com',
            controller: provider.emailController,
            onChanged: provider.onChangedEmail,
            validator: provider.emailValidator,
            myIcon: Icons.email_outlined),
        TextinputsField(
            label: 'Password',
            controller: provider.passwordController,
            myIcon: Icons.lock,
            hint: '*********',
            obscureText: true,
            onChanged: provider.onChangedPassword,
            validator: provider.passwordValidator),
      ],
    );
  }
}