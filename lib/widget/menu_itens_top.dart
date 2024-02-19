import 'package:flutter/cupertino.dart';
import 'package:superfood/styles_patterns/app_colors.dart';

class MenuItemHead extends StatefulWidget {
  final String TitleName;
  final Image urlmImage;

  const MenuItemHead(
      {super.key, required this.TitleName, required this.urlmImage});

  @override
  State<MenuItemHead> createState() => _MenuItemBurguersState();
}

class _MenuItemBurguersState extends State<MenuItemHead> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 68,
          height: 68,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.whiteBackground,
          ),
          child: Column(
            //Imagens que aparece no menu Inicial
            children: [widget.urlmImage],
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        //Titulo dos Menus
        Text(widget.TitleName)
      ],
    );
  }
}
