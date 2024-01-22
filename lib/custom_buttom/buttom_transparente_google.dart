import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtomTranparenteGoogle extends StatefulWidget {
  final String text;

  const ButtomTranparenteGoogle({
    super.key,
    required this.text,
  });

  @override
  State<ButtomTranparenteGoogle> createState() => _ButtomTranparenteState();
}

class _ButtomTranparenteState extends State<ButtomTranparenteGoogle> {
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
          Row(
            children: [Image.asset('lib/assets/imagens/icon_google.png')],
          ),
          Row(
            children: [
              const SizedBox(
                width: 30,
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
