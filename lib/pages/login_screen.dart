import 'package:flutter/material.dart';
import 'package:superfood/assets/text_styles/text_styles.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
}

class _LoginScreenState extends State<LoginScreen> {
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
              custonTextFormField(),

              // Campo de Senha

              // Botao Login

              // logo com Redes Social

              // Nao tenho Conta
            ],
          ),
        ),
      ),
    );
  }

  TextFormField custonTextFormField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'E-mail',
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(120))),
        focusedBorder: OutlineInputBorder(),
        errorBorder: OutlineInputBorder(),
        focusedErrorBorder: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(),
        disabledBorder: OutlineInputBorder(),
      ),
    );
  }
}
