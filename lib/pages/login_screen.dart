import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:superfood/custom_buttom/buttom_yellow.dart';
import 'package:superfood/styles_patterns/text_styles.dart';

import '../custom_buttom/buttom_transparente.dart';
import '../custom_buttom/buttom_transparente_facebook.dart';
import '../custom_buttom/buttom_transparente_google.dart';
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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Container(),
            ),
            //Logo Imagem
            Image.asset('lib/assets/imagens/panela.png'),
            const SizedBox(height: 20),
            TextStilo.superFood,

            const SizedBox(height: 120),

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
              hintText: 'Password',
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

            // Faixa Cetral Separando login por email de Logion com rede Social
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Container(
                    color: Colors.black,
                    height: 1,
                  ),
                ),
                Text(
                  ' OR ',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w800,
                    fontSize: 15,
                  ),
                ),
                Flexible(
                  child: Container(
                    color: Colors.black,
                    height: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),

            const ButtomTranparenteGoogle(
              Text: 'Login with Google',
            ),

            const SizedBox(
              height: 15,
            ),

            const ButtomTranparenteFace(
              Text: 'Login with Facebook',
            ),
            const SizedBox(
              height: 80,
            ),

            // Texto Noa tenho Conta
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ' Nao tem Conta? ',
                  style: GoogleFonts.poppins(
                      fontSize: 13, fontWeight: FontWeight.normal),
                ),
                Text(
                  ' Sign up ',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ],
            ),

            const SizedBox(
              width: 30,
            )
          ],
        ),
      ),
    );
  }
}
