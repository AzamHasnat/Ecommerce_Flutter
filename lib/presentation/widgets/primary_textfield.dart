import "package:flutter/material.dart";

class PrimaryTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController? controller;
  final bool obscureText;

  const PrimaryTextField(
      {super.key,
      required this.labelText,
      this.controller,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(7))),
    );
  }
}
