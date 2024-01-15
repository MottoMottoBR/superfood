import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  const CustomTextField(
      {super.key,  required this.labelText, required this.hintText});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final defaultBorder = const OutlineInputBorder();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        focusedBorder: defaultBorder,
        errorBorder: defaultBorder,
        focusedErrorBorder: defaultBorder,
        enabledBorder: defaultBorder,
        disabledBorder: defaultBorder,
      ),
    );
  }
}
