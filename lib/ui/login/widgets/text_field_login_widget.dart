import 'package:flutter/material.dart';

class TextFieldLoginWidget extends StatelessWidget {
  final String labelText;
  const TextFieldLoginWidget({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        labelText: labelText,
      ),
    );
  }
}
