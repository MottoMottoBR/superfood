import 'package:flutter/material.dart';

import '../widget/menu_itens_top.dart';

class MenuTopo extends StatefulWidget {
  const MenuTopo({super.key});

  @override
  State<MenuTopo> createState() => _MenuTopoState();
}

class _MenuTopoState extends State<MenuTopo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        //Menu de Burgers
        MenuItemHead(
          TitleName: 'Lanches',
          urlmImage: Image.asset('lib/assets/imagens/burger1.png'),
        ),
        //Menu de Pizza
        MenuItemHead(
          TitleName: 'Pizza',
          urlmImage: Image.asset('lib/assets/imagens/pizza1.png'),
        ),
        //Meu de Meat
        MenuItemHead(
          TitleName: 'Refeições',
          urlmImage: Image.asset('lib/assets/imagens/meat_1.png'),
        ),
        //Menu Icecrem
        MenuItemHead(
            TitleName: 'Sorvete',
            urlmImage: Image.asset('lib/assets/imagens/icecream1.png'))
      ],
    );
  }
}
