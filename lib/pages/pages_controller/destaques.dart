import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../styles_patterns/app_colors.dart';

class DestaquePrincipal extends StatefulWidget {
  final String titulo;
  final String preco;
  final Image imgURL;
  const DestaquePrincipal(
      {super.key,
      required this.titulo,
      required this.preco,
      required this.imgURL});

  @override
  State<DestaquePrincipal> createState() => _DestaquePrincipalState();
}

class _DestaquePrincipalState extends State<DestaquePrincipal> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 123,
          width: 140,
          decoration: BoxDecoration(
            color: AppColors.greySearch,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                widget.titulo,
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    r' $ ',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, color: AppColors.yellow),
                  ),
                  Text(
                    widget.preco,
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
        Positioned(
          top: -50,
          width: 143,
          height: 108.61,
          child: widget.imgURL,
        ),
      ],
    );
  }
}
