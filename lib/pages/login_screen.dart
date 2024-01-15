import 'package:flutter/material.dart';
import 'package:superfood/styles_patterns/text_styles.dart';

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

              // Botao Login

              // logo com Redes Social

              // Nao tenho Conta
            ],
          ),
        ),
      ),
    );
  }
}
