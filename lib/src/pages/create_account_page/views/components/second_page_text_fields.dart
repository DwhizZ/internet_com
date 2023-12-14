import 'package:flutter/material.dart';

import '../../../../config/global_widgets/text_inputs_field.dart';
import '../../provider/second_page_provider.dart';

class SecondPageTextFields extends StatelessWidget {
  const SecondPageTextFields({
    super.key,
    required this.provider,
  });

  final SecondPageProvider provider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextinputsField(
          controller: provider.nameController,
          label: 'NAME',
          myIcon: Icons.account_circle_outlined,
          onChanged: provider.onChangedName,
          hint: 'user123@gmail.com',
          validator: provider.nameValidator,
        ),
        TextinputsField(
          controller: provider.emailController,
          label: 'EMAIL',
          myIcon: Icons.email_outlined,
          onChanged: provider.onChangedEmail,
          hint: 'user123@gmail.com',
          validator: provider.emailValidator,
        ),
        TextinputsField(
          controller: provider.phoneNumber,
          label: 'PHONE',
          myIcon: Icons.phone_android_outlined,
          onChanged: provider.onChangedPhoneNumber,
          hint: '+91 9844545609',
          validator: provider.numberValidator,
        ),
        TextinputsField(
          controller: provider.password,
          label: 'PASSWORD',
          myIcon: Icons.lock_outline,
          onChanged: provider.onChangedPassword,
          hint: '**********',
          validator: provider.passwordValidator,
          obscureText: true,
        ),
        TextinputsField(
          controller: provider.password2,
          label: 'CONFIRM  PASSWORD',
          myIcon: Icons.lock_outline,
          onChanged: provider.onChangedPassword2,
          hint: '**********',
          validator: provider.passwordValidator2,
          obscureText: true,
        ),
      ],
    );
  }
}
