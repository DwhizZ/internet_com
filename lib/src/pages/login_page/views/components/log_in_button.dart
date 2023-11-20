import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../config/global_widgets/my_elevated_button.dart';
import '../../provider/main_page_provider.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.read<MainPageProvider>();
    return Padding(
      padding: const EdgeInsets.only(bottom: 35),
      child: MyElevatedButton(
        buttonText: 'LOGIN',
        onButtonClick: provider.fieldValidate
      ),
    );
  }
}