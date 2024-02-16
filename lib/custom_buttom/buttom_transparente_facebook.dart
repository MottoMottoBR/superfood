import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtomTranparenteFace extends StatefulWidget {
  final String text;

  const ButtomTranparenteFace({
    super.key,
    required this.text,
  });

  @override
  State<ButtomTranparenteFace> createState() => _ButtomTranparenteState();
}

class _ButtomTranparenteState extends State<ButtomTranparenteFace> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(35))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 45,),
          Row(
            children: [Image.asset('lib/assets/imagens/icon_facebook.png')],
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Text(
                widget.text,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300, fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
