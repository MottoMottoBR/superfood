import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:superfood/custom_buttom/buttom_yellow.dart';
import 'package:superfood/styles_patterns/text_styles.dart';

import '../custom_buttom/buttom_transparente.dart';
import '../widget/custom_text_field.dart';
import '../widget/password_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  get isHidden => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: Container(),
              ),
              //Logo Imagem
              Image.asset('lib/assets/imagens/panela.png'),
              const SizedBox(height: 5),
              TextStilo.superFood,

              const SizedBox(height: 20),

              // Campo de E-mail
              const CustomTextField(
                hintText: 'email@email.com',
                labelText: 'Email',
              ),
              const SizedBox(
                height: 15,
              ),

              // Campo de Senha
              const PassWordTextField(
                labelText: 'Password',
              ),
              const SizedBox(
                height: 15,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Forget Password?',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              // Botao Login
              InkWell(
                onTap: () {
                  log('Pressionado');
                },
                child: const ButtomYellow(
                  text: 'Login',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.black,
                    height: 1,
                    width: 150,
                  ),
                  Text(
                    ' OR ',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    height: 1,
                    width: 180,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const ButtomTranparente(Text: 'Login with Google',),

              const SizedBox(
                height: 15,
              ),

              const ButtomTranparente(Text: 'Login with Facebook',),

              // logo com Redes Social

              // Nao tenho Conta
            ],
          ),
        ),
      ),
    );
  }
}
