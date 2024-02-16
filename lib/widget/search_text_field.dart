import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:superfood/styles_patterns/app_colors.dart';

class SearchTextField extends StatefulWidget {
  final String? hitText;
  const SearchTextField({super.key, this.hitText});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final defaultBorder =
      OutlineInputBorder(borderRadius: BorderRadius.circular(100.0));

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      style: GoogleFonts.poppins(),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.greySearch,
        hintText: 'Search Super Foodoo',
        prefixIcon: const Padding(
          padding: EdgeInsets.only(top: 4),
          child: Icon(
            Icons.search,
            size: 30,
            color: AppColors.black,
          ),
        ),
        suffixIcon: const Padding(
          padding: EdgeInsetsDirectional.only(end: 12),
          child: Icon(Icons.rotate_left_outlined),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(20.7),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(20.7),
        ),
      ),
    );
  }
}
