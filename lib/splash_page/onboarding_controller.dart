import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:superfood/splash_page/splash_page_intro.dart';
import 'package:superfood/splash_page/splash_page_intro01.dart';
import 'package:superfood/splash_page/splash_page_intro02.dart';
import 'package:superfood/splash_page/splash_page_intro03.dart';
import 'package:superfood/splash_page/splash_page_intro04.dart';

class OnboardingController extends StatefulWidget {
  const OnboardingController({super.key});

  @override
  State<OnboardingController> createState() => _OnboardingControllerState();
}

class _OnboardingControllerState extends State<OnboardingController> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _controller,
          children: const [
            SplashPage01(),
            SplashPage02(),
            SplashPage03(),
            SplashPage04(),
          ],
        ),

        //Smooth Page Indicador
        Container(
            alignment: const Alignment(0, 0.9),
            child: SmoothPageIndicator(controller: _controller, count: 4)),
      ]),
    );
  }
}
