import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtomTranparente extends StatefulWidget {
  final String Text;
  const ButtomTranparente({super.key, required this.Text});

  @override
  State<ButtomTranparente> createState() => _ButtomTranparenteState();
}

class _ButtomTranparenteState extends State<ButtomTranparente> {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(35))),
      child: Row(
        children: [
          Image.asset('lib/assets/imagens/icon_google.png'),
          Text(
            widget.Text,
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w300, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
