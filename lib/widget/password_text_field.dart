import 'dart:developer';

import 'package:flutter/material.dart';

class PassWordTextField extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final Icon? suffixIcon;
  final bool? obscureText;

  const PassWordTextField({
    super.key,
    this.hintText,
    this.labelText,
    this.suffixIcon,
    this.obscureText,
  });

  @override
  State<PassWordTextField> createState() => _PassWordTextFieldState();
}

class _PassWordTextFieldState extends State<PassWordTextField> {
  final defautlBorder = const OutlineInputBorder();

  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isHidden,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        focusedBorder: defautlBorder,
        errorBorder: defautlBorder,
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
