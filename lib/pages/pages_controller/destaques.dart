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
    return Column(
      children: [
        Stack(
          // alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 133,
              width: 150,
              decoration: BoxDecoration(
                color: AppColors.greySearch,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Positioned(
              bottom: -10,
              //bottom: -40,

              child: widget.imgURL,
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
