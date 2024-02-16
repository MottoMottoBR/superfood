import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:superfood/pages/login_screen.dart';
import 'package:superfood/pages/register_screen.dart';

import '../custom_buttom/buttom_yellow.dart';
import '../styles_patterns/app_colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackground,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Espacamento Inicial em referencia o AppBar
              const SizedBox(height: 50),
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
              Text(
                  'Lorem ipsum dolor sit amet consectetur. Ut cras pellentesque  ',
                  style: GoogleFonts.poppins(color: AppColors.black),
                  textAlign: TextAlign.center),
              const SizedBox(height: 20),

              // Botao de Criar Conta

              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const RegisterScreen();
                      }),
                    );
                  },
                  child: const ButtomYellow(
                    text: 'Create account',
                  )),
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
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(35))),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const LoginScreen();
                          }),
                        );
                      },
                      child: Text('Login',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w800, fontSize: 17)),
                    )),
              ),
              const SizedBox(height: 40),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 300),
                child: Text(
                  'Ao registrar-se ou fazer login, você concorda com os termos de uso ',
                  style: GoogleFonts.poppins(color: AppColors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
