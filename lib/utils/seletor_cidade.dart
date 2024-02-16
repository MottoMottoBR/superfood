import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeletorEdereco extends StatelessWidget {
  final dropValeu = ValueNotifier('');
  final dropOpcoes = [
    'Endereço 1',
    'Endereço 2',
    'Endereço 3',
    'Endereço 4',
    'Endereço 5'
  ];

  SeletorEdereco({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: dropValeu,
        builder: (BuildContext context, String value, _) {
          return DropdownButton<String>(
              hint:  Text('Selecione o Endereço', style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.bold ,
              ),),
              value: (value.isEmpty) ? null : value,
              onChanged: (escolha) => dropValeu.value = escolha.toString(),
              items: dropOpcoes
                  .map(
                    (op) => DropdownMenuItem(
                      value: op,
                      child: Text(op),
                    ),
                  )
                  .toList());
        });
  }
}
