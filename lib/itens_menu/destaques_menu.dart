import 'package:flutter/material.dart';

import '../pages/pages_controller/destaques.dart';

class DestaquesMenu extends StatefulWidget {
  const DestaquesMenu({super.key});

  @override
  State<DestaquesMenu> createState() => _DestaquesMenuState();
}

class _DestaquesMenuState extends State<DestaquesMenu> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DestaquePrincipal(
            titulo: 'Mc Double',
            preco: '20.99',
            imgURL: Image.asset(
              'lib/assets/imagens/hamburg.png',
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          DestaquePrincipal(
            titulo: 'Pizza Suprema',
            preco: ' 15.99',
            imgURL: Image.asset(
              'lib/assets/imagens/pizzasuprema.png',
            ),
          ),
          DestaquePrincipal(
            titulo: 'Frango Frito',
            preco: '25.99',
            imgURL: Image.asset(
              'lib/assets/imagens/frango.png',
            ),
          ),
        ],
      ),
    );
  }
}
