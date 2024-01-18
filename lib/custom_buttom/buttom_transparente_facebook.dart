import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtomTranparenteFace extends StatefulWidget {
  final String Text;

  const ButtomTranparenteFace({
    super.key,
    required this.Text,
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
          Row(
            children: [
              const SizedBox(),
              Image.asset('lib/assets/imagens/icon_facebook.png'),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 30,
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
