import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtomTranparenteGoogle extends StatefulWidget {
  final String Text;

  const ButtomTranparenteGoogle({
    super.key,
    required this.Text,
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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 50,
              ),
              Image.asset('lib/assets/imagens/icon_google.png')
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Text(
                widget.Text,
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
