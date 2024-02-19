import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../styles_patterns/app_colors.dart';

class FeaturedFood extends StatefulWidget {
  //Nome destacado do produtor
  // final Image.file urlImg; //= Image.asset( '/lib/assets/imagens/delicious-pizza-indoors1.png');
  final Image urlImagem;
  //Equita amarela com oferta do produto em destaque(Banner Amarelo)
  final String titlePromoBanner;
  //Nome do produto em destaque.
  final String titleNameProduto;
  //Preçodo produto em destaque
  final String titlePrecoDoProduto;
  //Avaliação / nota do produto.
  final String Nota;
  final Icon;

  FeaturedFood({
    super.key,
    required this.titlePromoBanner,
    required this.titleNameProduto,
    required this.titlePrecoDoProduto,
    required this.Nota,
    required this.urlImagem,
    this.Icon,
  });

  @override
  State<FeaturedFood> createState() => _FeaturedFoodState();
}

class _FeaturedFoodState extends State<FeaturedFood> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Stack(
              children: [
                //Imagem do produto em destaque.
                widget.urlImagem,
                Positioned(
                  top: 16,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: AppColors.yellow,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(2, 1, 4, 1),
                      child: Text(
                        //Equita amarela com oferta do produto em destaque (Banner Amarelo)
                        widget.titlePromoBanner,
                        style: GoogleFonts.poppins(fontSize: 11),
                      ),
                    ),
                  ),
                ),
                //Possição da Estrela de Favorito
                const Positioned(
                  right: 5,
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: AppColors.whiteBackground,
                  ),
                ),
                //Possição da avaliação do produto
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: Container(
                    width: 30,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColors.yellow),
                    child: Text(widget.Nota),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  //Nome do Produto em destaque
                  widget.titleNameProduto,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Text(
                  //Valor do produtor e tempo de entrega estimado
                  widget.titlePrecoDoProduto,
                  style:
                      GoogleFonts.poppins(fontSize: 11, color: AppColors.black),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          width: 30,
        )
      ],
    );
  }
}
