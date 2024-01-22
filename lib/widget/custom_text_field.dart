import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final EdgeInsetsGeometry? padding;
  final String? hintText;
  final String? labelText;
  final FormFieldValidator<String>? validator;
  final String? helperText;

  const CustomTextField(
      {super.key,
      this.labelText,
      this.hintText,
      this.validator,
      this.helperText,
      this.controller,
      this.padding});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final defaultBorder =
      OutlineInputBorder(borderRadius: BorderRadius.circular(100.0));

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      //keyboardType: widget.emailType,
      decoration: InputDecoration(
        helperMaxLines: 3,
        labelText: widget.labelText,
        hintText: widget.hintText,
        focusedBorder: defaultBorder,
        //coloca uma cor na borda e no texto de aviso em caso de error
        errorBorder: defaultBorder.copyWith(
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: defaultBorder,
        enabledBorder: defaultBorder,
        disabledBorder: defaultBorder,
        helperText: widget.helperText,
      ),
    );
  }
}
