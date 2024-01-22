import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../styles_patterns/app_colors.dart';

class ButtomYellow extends StatefulWidget {
  final String text;
  const ButtomYellow({super.key, required this.text});

  @override
  State<ButtomYellow> createState() => _LoginButtomState();
}

class _LoginButtomState extends State<ButtomYellow> {
  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment.center,
      height: 50,
      decoration: const BoxDecoration(
          color: AppColors.yellow,
          borderRadius: BorderRadius.all(Radius.circular(35))),
      child: Text(
        widget.text,
        style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.w800),
      ),
    );
  }
}
