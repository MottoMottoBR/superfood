import 'package:flutter/material.dart';

import '../widget/featured_foodoo.dart';

class TopPromo extends StatefulWidget {
  const TopPromo({super.key});

  @override
  State<TopPromo> createState() => _TopPromoState();
}

class _TopPromoState extends State<TopPromo> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Menu Item em Destaque
          FeaturedFood(
            titlePromoBanner: r'Item grátis (gaste $ 10)',
            titleNameProduto: 'McDonald’s (Melhor oferta)',
            titlePrecoDoProduto: r'$4.99 Taxa de entrega Gratis . 15-30 min',
            Nota: '4.5',
            urlImagem: Image.asset(
              'lib/assets/imagens/view-3d-burger.png',
            ),
          ),
          FeaturedFood(
            titlePromoBanner: r'Compre 1 leve 1 de graça',
            titleNameProduto: 'Pizza Suprema',
            titlePrecoDoProduto: r'$2.99 Taxa de entrega Gratis . 15-30 min',
            Nota: '3.9',
            urlImagem:
                Image.asset('lib/assets/imagens/delicious-pizza-indoors1.png'),
          ),
          FeaturedFood(
            titlePromoBanner: r'30% off(Usando $10)',
            titleNameProduto: r'Tacos Supreme',
            titlePrecoDoProduto: r'$2.99 Taxa de entrega Gratis . 15-30 min',
            Nota: '4.9',
            urlImagem: Image.asset('lib/assets/imagens/tacos1.png'),
          ),
        ],
      ),
    );
  }
}
