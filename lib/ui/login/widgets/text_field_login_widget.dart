import 'package:flutter/material.dart';

class TextFieldLoginWidget extends StatefulWidget {
  final String labelText;
  final TextEditingController? controller;
  final Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final bool? isPassword;
  final TextInputType? keyboardType;
  final TextInputAction? keyboardAction;

  const TextFieldLoginWidget({
    super.key,
    required this.labelText,
    this.controller,
    this.onSaved,
    this.validator,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.keyboardAction,
  });
  @override
  State<TextFieldLoginWidget> createState() => _TextFieldLoginWidgetState();
}

class _TextFieldLoginWidgetState extends State<TextFieldLoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: SizedBox(
          width: 275.0,
          child: TextFormField(
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            textInputAction: widget.keyboardAction,
            validator: widget.validator,
            onSaved: widget.onSaved,
            obscureText: widget.isPassword ?? false,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              contentPadding: const EdgeInsets.only(left: 20.0),
              labelText: widget.labelText,
              labelStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
            ),
          ),
        ),
      ),
    );
  }
}
