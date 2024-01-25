import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../routers/skyp_routers.dart';

import '../styles_patterns/app_colors.dart';

class SplashPage03 extends StatelessWidget {
  const SplashPage03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackground,
      body: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [RotaLoginScreen(texto: 'Skip',)],
            ),
            const SizedBox(height: 130),
            Image.asset('lib/assets/imagens/intro3.png'),
            const SizedBox(height: 80),
            Row(

              children: [
                Text(
                  'Find Nearby Restaurants',
                  style: GoogleFonts.poppins(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black),
                ),
              ],
            ),
            const SizedBox(height: 30),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 350,
              ),
              child: Text(
                'Lorem ipsum dolor sit amet consectetur. Ut cras '
                'pellentesque diam mauris laoreet donec a eget aliquam. ',
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
