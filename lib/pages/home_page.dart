import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:superfood/itens_menu_head/menu_itens_icecream.dart';
import 'package:superfood/itens_menu_head/menu_itens_meat.dart';

import '../itens_menu_head/menu_itens_pizza.dart';
import '../styles_patterns/app_colors.dart';
import '../utils/seletor_cidade.dart';
import '../widget/custom_text_field.dart';
import '../itens_menu_head/menu_itens_burgers.dart';
import '../widget/password_text_field.dart';
import '../widget/search_text_field.dart';
import 'header/featured_foodoo.dart';

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
        body: Container(
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
                        'Deliver now',
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
                            child:
                                Image.asset('lib/assets/imagens/Briefcase.png'),
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
              const SearchTextField(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        print('Pressionou Burgers');
                      },
                      child: const MenuItemBurguers()),
                  GestureDetector(
                      onTap: () {
                        print('Pressionou Pizza');
                      },
                      child: const MenuItemPizza()),
                  GestureDetector(
                      onTap: () {
                        print('Pressionou Meat');
                      },
                      child: const MenuItemMeat()),
                  GestureDetector(
                      onTap: () {
                        print('Pressionou Ice Cream');
                      },
                      child: const MenuItemIceCream()),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Featured on Super Foodoo',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w800, fontSize: 17),
                  ),
                  Container(
                      height: 40,
                      width: 50,
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
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FeaturedFood(),
                    FeaturedFood(),
                    FeaturedFood(),
                    FeaturedFood(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
