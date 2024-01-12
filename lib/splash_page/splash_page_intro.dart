import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:superfood/assets/text_styles/text_styles.dart';
import 'package:superfood/styles_patterns/app_colors.dart';



class SplashPageIntro extends StatelessWidget {
  const SplashPageIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'lib/assets/imagens/group.png',
            width: 900,
            height: 900,
          ),
          Positioned(
              right: 90,
              bottom: 450,
              child: Image.asset('lib/assets/imagens/panela.png')),
          Positioned(
              right: 119,
              bottom: 400,
              child: TextStilo.superFood)
        ],
      ),
    );
  }
}
