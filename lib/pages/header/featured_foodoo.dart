import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../styles_patterns/app_colors.dart';

class FeaturedFood extends StatelessWidget {
  const FeaturedFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Stack(
              children: [
                Image.asset(
                  'lib/assets/imagens/view-3d-burger.png',
                ),
                Positioned(
                  top: 16,
                  child: Container(
                    width: 135,
                    height: 18,
                    decoration: const BoxDecoration(
                      color: AppColors.yellow,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: Text(
                      r" Free Item (Spend $10)",
                      style: GoogleFonts.poppins(fontSize: 11),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 15,
            ),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'McDonald’s(Best Offer)',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Text(
                  r'$4.99 Delivery Fee . 15-30 min',
                  style:
                      GoogleFonts.poppins(fontSize: 11, color: AppColors.black),
                ),
              ],
            ),
            const SizedBox(
              width: 30,
            ),
            Container(
              alignment: Alignment.center,
              width: 31,
              height: 27,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: AppColors.greySearch),
              child: const Text('4.5'),
            )
          ],
        ),
      ],
    );
  }
}
