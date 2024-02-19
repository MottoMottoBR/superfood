import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:superfood/itens_menu/menu_topo.dart';
import 'package:superfood/itens_menu/promo_topo.dart';
import '../itens_menu/destaques_menu.dart';
import '../styles_patterns/app_colors.dart';
import 'pages_controller/destaques.dart';
import '../widget/search_text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backGroundColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Entregar agora',
                          style: GoogleFonts.poppins(fontSize: 13),
                        ),
                        Row(
                          children: [
                            Text(
                              'Meu endereço 01',
                              style: GoogleFonts.poppins(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            const Icon(Icons.arrow_drop_down)
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 75,
                      height: 37,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19),
                        color: AppColors.greyClaro,
                      ),
                      child: Container(
                        width: 37,
                        height: 37,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 37,
                              height: 37,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(19),
                                color: AppColors.black,
                              ),
                              child: Image.asset(
                                  'lib/assets/imagens/Briefcase.png'),
                            ),
                            Image.asset('lib/assets/imagens/trabalhador.png'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                //Campo De pequisa
                const SearchTextField(),

                const SizedBox(
                  height: 20,
                ),
                //Inicio do meu do TOP
                const MenuTopo(),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Destaque Super Foodoo',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w800, fontSize: 17),
                    ),
                    Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: AppColors.greySearch,
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: const Icon(Icons.arrow_forward))
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                //Pagina Promoções em Destaque
                const TopPromo(),
                const SizedBox(
                  height: 20,
                ),

                //Destaques
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Destaques',
                      style: GoogleFonts.poppins(
                          color: AppColors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 20),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.grey,
                      ),
                      child: const Icon(Icons.arrow_forward_sharp),
                    ),
                  ],
                ),


                const DestaquesMenu(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
