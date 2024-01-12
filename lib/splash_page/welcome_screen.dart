import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../styles_patterns/app_colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackground,
      body: Column(
        children: [
          //Espacamento Inicial em referencia o AppBar
          const SizedBox(height: 110),
          Image.asset('lib/assets/imagens/group7.png'),
          const SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome to Super Food',
                  style: GoogleFonts.poppins(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black))
            ],
          ),
          const SizedBox(height: 20),
          ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 350),
              child: Text(
                  'Lorem ipsum dolor sit amet consectetur. Ut cras pellentesque  ',
                  style: GoogleFonts.poppins(color: AppColors.black),
                  textAlign: TextAlign.center)),
          const SizedBox(height: 20),

          // Botao de Criar Conta

          GestureDetector(
            onTap: () {
              if (kDebugMode) {
                print('Botao Criar Conta foi pressionado');
              }
            },
            child: Container(
              alignment: Alignment.center,
              width: 380,
              height: 50,
              decoration: const BoxDecoration(
                  color: AppColors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(35))),
              child: Text(
                'Create account',
                style: GoogleFonts.poppins(
                    fontSize: 17, fontWeight: FontWeight.w800),
              ),
            ),
          ),
          const SizedBox(height: 10),

          //Botao de Login
          GestureDetector(
            onTap: () {
              if (kDebugMode) {
                print('Botao Login Conta foi pressionado');
              }
            },
            child: Container(
                alignment: Alignment.center,
                width: 380,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(35))),
                child: Text('Login',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w800, fontSize: 17))),
          ),
          const SizedBox(height: 20),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: Text(
              'By Registering or Login you have agreed to these ',
              style: GoogleFonts.poppins(color: AppColors.black),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
