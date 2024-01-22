import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:superfood/splash_page/splash_page_intro01.dart';
import 'package:superfood/splash_page/splash_page_intro02.dart';
import 'package:superfood/splash_page/splash_page_intro03.dart';
import 'package:superfood/splash_page/splash_page_intro04.dart';
import 'package:superfood/splash_page/welcome_screen.dart';

class OnboardingController extends StatefulWidget {
  const OnboardingController({super.key});

  @override
  State<OnboardingController> createState() => _OnboardingControllerState();
}

class _OnboardingControllerState extends State<OnboardingController> {
  final PageController _controller = PageController();
  bool onlastpage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onlastpage = (index == 3);
            });
          },
          children: const [
            SplashPage01(),
            SplashPage02(),
            SplashPage03(),
            SplashPage04(),
            WelcomeScreen(),
          ],
        ),

        //Smooth Page Indicador
        Container(
          alignment: const Alignment(0, 0.9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SmoothPageIndicator(controller: _controller, count: 5),

            ],
          ),
        ),
      ]),
    );
  }
}
