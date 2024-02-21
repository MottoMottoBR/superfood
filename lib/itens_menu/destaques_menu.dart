import 'package:flutter/material.dart';
import 'package:superfood/styles_patterns/app_colors.dart';

import '../pages/pages_controller/destaques.dart';

class DestaquesMenu extends StatefulWidget {
  const DestaquesMenu({super.key});

  @override
  State<DestaquesMenu> createState() => _DestaquesMenuState();
}

class _DestaquesMenuState extends State<DestaquesMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DestaquePrincipal(
              imgURL: Image.asset(
                'lib/assets/imagens/hamburg.png',
              ),
              titulo: 'Mc Double',
              preco: '20.99',
            ),
            const SizedBox(
              width: 12,
            ),
            DestaquePrincipal(
              titulo: 'Pizza Suprema',
              preco: ' 15.99',
              imgURL: Image.asset(
                'lib/assets/imagens/pizzasuprema.png',
              ),
            ),
            const SizedBox(
              width: 12,
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
      ),
    );
  }
}
