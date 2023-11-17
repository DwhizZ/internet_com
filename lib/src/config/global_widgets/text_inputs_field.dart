import 'package:flutter/material.dart';

class TextinputsField extends StatelessWidget {
  const TextinputsField(
      {super.key,
      required this.label,
      this.hint,
      required this.controller,
      this.onChanged,
      this.validator, this.obscureText = false, required this.myIcon});

  final String label;
  final String? hint;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool obscureText;
  final IconData myIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        validator: validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: obscureText,
        decoration: InputDecoration(
          label: Text(label),
          hintText: hint,
          border: const OutlineInputBorder(),
          prefixIcon: Icon(myIcon),
        ),
      ),
    );
  
  }
}





