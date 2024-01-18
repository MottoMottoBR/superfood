import 'package:flutter/material.dart';
import 'package:superfood/styles_patterns/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.grey,
      body: Column(
        children: [
          Text( 'HomePage')
        ],
      ),
    );
  }
}
