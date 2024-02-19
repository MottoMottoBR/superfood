import 'dart:developer';

import 'package:flutter/material.dart';

class PassWordTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String labelText;
  final Icon? suffixIcon;
  final bool? obscureText;
  final FormFieldValidator<String>? validator;
  final String? helperText;

  const PassWordTextField({
    super.key,
    this.hintText,
    required this.labelText,
    this.suffixIcon,
    this.obscureText,
    this.validator,
    this.helperText,
    this.controller,
  });

  @override
  State<PassWordTextField> createState() => _PassWordTextFieldState();
}

class _PassWordTextFieldState extends State<PassWordTextField> {
  final defautlBorder =
      OutlineInputBorder(borderRadius: BorderRadius.circular(40.0));

  String? _helperText;

  @override
  void initState() {
    super.initState();
    _helperText = widget.helperText;
  }

  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      onChanged: (value) {
        if (value.length == 1) {
          setState(() {
            _helperText = null;
          });
        } else if (value.isEmpty) {
          setState(() {
            _helperText = widget.helperText;
          });
        }
      },
      obscureText: isHidden,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        helperMaxLines: 3,
        errorMaxLines: 3,
        helperText: _helperText,
        labelText: widget.labelText,
        hintText: widget.hintText,
        focusedBorder: defautlBorder,
        errorBorder: defautlBorder.copyWith(
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: defautlBorder,
        enabledBorder: defautlBorder,
        disabledBorder: defautlBorder,
        suffixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(end: 16.0),
          child: InkWell(
            borderRadius: BorderRadius.circular(23.0),
            onTap: () {
              log('Pressionado');
              setState(() {
                isHidden = !isHidden;
              });
            },
            child: Icon(isHidden ? Icons.visibility_off : Icons.visibility),
          ),
        ),
      ),
    );
  }
}
