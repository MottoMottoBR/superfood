import 'package:flutter/cupertino.dart';
import 'package:superfood/styles_patterns/app_colors.dart';

class MenuItemBurguers extends StatelessWidget {
  const MenuItemBurguers({super.key});

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
                Image.asset('lib/assets/imagens/burger1.png',height: 65, width: 75,),
              ],
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          const Text('Burgers')
        ],
      ),
    );
  }
}
