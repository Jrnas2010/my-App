import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  const MyTextField({
    super.key,
    required this.controller,
    required this.icon,
    required this.hintText,
    required this.obscureText,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 25.0),
      child:
      TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          icon: Icon(icon),
          hintText: hintText,
        ),
        obscureText: obscureText,
      ),
    );

  }
}