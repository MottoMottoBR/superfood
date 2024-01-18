import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:superfood/styles_patterns/app_colors.dart';

import '../pages/login_screen.dart';

class RotaLoginScreen extends StatefulWidget {
  final String texto;
  const RotaLoginScreen({
    super.key,
    required this.texto,
  });

  @override
  State<RotaLoginScreen> createState() => _RotaLoginScreenState();
}

class _RotaLoginScreenState extends State<RotaLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const LoginScreen();
            },
          ),
        );
      },
      child: Text(widget.texto, style: GoogleFonts.poppins(
        color: AppColors.yellow
      ),),
    );
  }
}
