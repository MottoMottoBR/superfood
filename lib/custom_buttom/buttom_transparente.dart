import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtomTranparente extends StatefulWidget {
  final String text;

  const ButtomTranparente({super.key, required this.text, });

  @override
  State<ButtomTranparente> createState() => _ButtomTranparenteState();
}

class _ButtomTranparenteState extends State<ButtomTranparente> {


  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(35))),
        child: Row(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 100,
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
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
      ),
    );
  }
}
