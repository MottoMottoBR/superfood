import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:superfood/pages/pages_controller/register_controller.dart';
import 'package:superfood/pages/pages_controller/register_state.dart';
import 'package:superfood/utils/validator.dart';
import '../custom_buttom/buttom_transparente_facebook.dart';
import '../custom_buttom/buttom_transparente_google.dart';
import '../custom_buttom/buttom_yellow.dart';
import '../styles_patterns/text_styles.dart';
import '../widget/custom_text_field.dart';
import '../widget/password_text_field.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _controller = RegisterController();

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller.addListener(() {
      if(_controller.state is RegisterLoadingState){
        showDialog(context: context, builder: (context) => const Center(
          child: CircularProgressIndicator(),
        ));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset('lib/assets/imagens/panela.png'),
                  const SizedBox(height: 12),
                  TextStilo.superFood,
                  const SizedBox(height: 40),
                  const CustomTextField(
                    labelText: 'Email',
                    hintText: 'email@email.com',
                    validator: Validador.validatorEmail,
                  ),
                  const SizedBox(height: 20),
                  PassWordTextField(
                    controller: _passwordController,
                    labelText: 'Escolha uma senha',
                    hintText: '*********',
                    validator: Validador.validatorPassword,
                    helperText:
                        'Digite uma senha com no minino uma letra maiuscula',
                  ),
                  const SizedBox(height: 20),
                  PassWordTextField(
                      labelText: 'Confirme sua senha',
                      hintText: '*********',
                      validator: (value) => Validador.validatorConfirmPassword(
                          value, _passwordController.text)),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      final valid = _formKey.currentState != null &&
                          _formKey.currentState!.validate();
                      if (valid) {
                        log(_controller.doRegister.toString());
                      } else {
                        log('Erro Ao logar');
                      }
                    },
                    child: const ButtomYellow(
                      text: 'Sign up',
                    ),
                  ),
                  const SizedBox(height: 20), // ------ OR -------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        color: Colors.black,
                        height: 1,
                        width: 140,
                      ),
                      Text(
                        'OR',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        height: 1,
                        width: 140,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const ButtomTranparenteGoogle(
                    text: 'Sign Up with Google',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const ButtomTranparenteFace(
                    text: 'Sign Up with Facebook',
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ja tem uma conta?',
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const LoginScreen();
                              },
                            ),
                          );
                        },
                        child: Text(
                          ' Conecte-se',
                          style: GoogleFonts.poppins(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
