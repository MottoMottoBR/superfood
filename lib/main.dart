import 'package:flutter/material.dart';
import 'package:superfood/pages/home_page.dart';
import 'package:superfood/pages/profile_page.dart';
import 'package:superfood/pages/register_screen.dart';
import 'package:superfood/splash_page/onboarding_controller.dart';
import 'package:superfood/splash_page/splash_page_intro.dart';
import 'package:superfood/splash_page/splash_page_intro01.dart';
import 'package:superfood/splash_page/splash_page_intro02.dart';
import 'package:superfood/splash_page/splash_page_intro03.dart';
import 'package:superfood/splash_page/splash_page_intro04.dart';
import 'package:superfood/splash_page/welcome_screen.dart';
import 'pages/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Super Food',
      theme: ThemeData(),
      home:  const HomePage(),
    );
  }
}
