import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:superfood/routes/skyp_routers.dart';

import '../styles_patterns/app_colors.dart';

class SplashPage01 extends StatefulWidget {
  const SplashPage01({super.key});

  @override
  State<SplashPage01> createState() => _SplashPage01State();
}

class _SplashPage01State extends State<SplashPage01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackground,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            const SizedBox(height: 40 ,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [RotaLoginScreen(texto: 'Skip')],
            ),
            const SizedBox(height: 90),
            Image.asset('lib/assets/imagens/intro1.png'),
            const SizedBox(height: 80),
            Text(
              'Trending Foods',
              style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black),
            ),
            const SizedBox(height: 30),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 350,
              ),
              child: Text(
                'Lorem ipsum dolor sit amet consectetur. Ut cras pellentesque diam mauris laoreet donec a eget aliquam. ',
                style: GoogleFonts.poppins(color: AppColors.black),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
