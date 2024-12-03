import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(244, 244, 244, 1)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(244, 244, 244, 1)),
        ),
        fillColor: const Color.fromRGBO(244, 244, 244, 1),
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 14,
          color: Color.fromRGBO(168, 168, 168, 1),
        ),
      ),
    );
  }
}
