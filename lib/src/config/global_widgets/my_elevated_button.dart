import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({
    super.key,
    required this.buttonText,
    this.onButtonClick,
  });

  final String buttonText;
  final void Function()? onButtonClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onButtonClick,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 61, 12, 196),
        minimumSize: const Size.fromHeight(50),
      ),
      child:  Text(buttonText),
    );
  }
}
