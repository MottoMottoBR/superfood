import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class TextStilo {
  TextStilo._();

  static Text superFood = Text(
    'SUPER FOOD',
    style: GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
      fontSize: 30,
      color: AppColors.orange,
      textStyle: const TextStyle(
        shadows: [
          Shadow(
            blurRadius: 1.0,
            color: AppColors.black,
          ),
        ],
      ),
    ),
  );
}
