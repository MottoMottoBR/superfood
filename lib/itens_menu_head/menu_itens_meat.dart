import 'package:flutter/cupertino.dart';
import 'package:superfood/styles_patterns/app_colors.dart';

class MenuItemMeat extends StatelessWidget {
  const MenuItemMeat({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 79,
            height: 67,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.whiteBackground,
            ),
            child: Column(
              children: [
                Image.asset('lib/assets/imagens/meat_1.png' ,height: 65, width: 75,),
              ],
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          const Text('Meat')
        ],
      ),
    );
  }
}
