import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    //
    // Future.delayed(const Duration(seconds: 3), () {
    //   Navigator.of(context).pushReplacement(MaterialPageRoute(
    //     builder: (_) => const HomePge(),
    //   ));
    // });
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
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            child: Image.asset(
              'lib/assets/imagens/panela.png',
              height: double.infinity,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
