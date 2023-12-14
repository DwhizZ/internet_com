import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../config/global_widgets/text_inputs_field.dart';
import '../../provider/main_page_provider.dart';

class MainPageTextFields extends StatelessWidget {
  const MainPageTextFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var provider = context.read<MainPageProvider>();
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
