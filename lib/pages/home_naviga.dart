import 'package:flutter/material.dart';
import 'package:superfood/pages/home_page.dart';
import 'package:superfood/pages/pages_controller/carrinho_page.dart';
import 'package:superfood/pages/pages_controller/favoritos_page.dart';
import 'package:superfood/pages/pages_controller/perfil_page.dart';
import 'package:superfood/pages/pages_controller/pesquisa_page.dart';
import 'package:superfood/styles_patterns/app_colors.dart';

class HomeNaviga extends StatefulWidget {
  const HomeNaviga({super.key});

  @override
  State<HomeNaviga> createState() => _HomeNavigaState();
}

class _HomeNavigaState extends State<HomeNaviga> {
  int paginaAtual = 0;
  late PageController paginaControle;

  @override
  void initState() {
    paginaControle = PageController(initialPage: paginaAtual);

    super.initState();
  }

  setPaginaAtual(pagina) {
    setState(() {
      paginaAtual = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: paginaControle,
        onPageChanged: setPaginaAtual,
        children: const [
          HomePage(),
          PesquisaPage(),
          CarrinhoPage(),
          FavoritosPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: paginaAtual,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: AppColors.black,
              ),
              label: 'kkkk'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: AppColors.black,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: AppColors.black,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: AppColors.black,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: AppColors.black,
              ),
              label: ''),
        ],
        onTap: (pagina) {
          paginaControle.animateToPage(pagina,
              duration: const Duration(milliseconds: 400), curve: Curves.ease);
        },
        backgroundColor: AppColors.whiteBackground,
      ),
    );
  }
}
