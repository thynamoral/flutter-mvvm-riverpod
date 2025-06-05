import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isObscureText = false,
  });

  final String hintText;
  final TextEditingController controller;
  final bool isObscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText,
      validator: (value) {
        if (value!.trim().isEmpty) {
          return '$hintText is required';
        }
        return null;
      },
      decoration: InputDecoration(hintText: hintText),
    );
  }
}
