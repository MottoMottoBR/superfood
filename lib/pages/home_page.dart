import 'package:flutter/material.dart';
import 'package:superfood/styles_patterns/app_colors.dart';

class HomePge extends StatelessWidget {
  const HomePge({super.key});

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
