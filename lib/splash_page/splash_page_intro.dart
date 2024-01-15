import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:superfood/pages/home_page.dart';
import 'package:superfood/styles_patterns/text_styles.dart';
import 'package:superfood/styles_patterns/app_colors.dart';

class SplashPageIntro extends StatefulWidget {
  const SplashPageIntro({super.key});

  @override
  State<SplashPageIntro> createState() => _SplashPageIntroState();
}

class _SplashPageIntroState extends State<SplashPageIntro>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 2), (){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const HomePge(),));

    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'lib/assets/imagens/group.png',
            width: 900,
            height: 900,
          ),
          Positioned(
              right: 90,
              bottom: 450,
              child: Image.asset('lib/assets/imagens/panela.png')),
          Positioned(right: 119, bottom: 400, child: TextStilo.superFood)
        ],
      ),
    );
  }
}
