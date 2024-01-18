import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('lib/assets/imagens/panela.png'),
                const SizedBox(height: 12),
                TextStilo.superFood,
                const SizedBox(height: 40),
                const CustomTextField(
                  labelText: 'Email',
                  hintText: 'email@email.com',
                ),
                const SizedBox(height: 20),
                const PassWordTextField(
                  labelText: 'Password',
                ),
                const SizedBox(height: 20),
                const PassWordTextField(
                  labelText: 'Confirm Password',
                ),
                const SizedBox(height: 40),
                const ButtomYellow(
                  text: 'Sign up',
                ),
                const SizedBox(height: 20),
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
                  Text: 'Sign Up with Google',
                ),
                const SizedBox(
                  height: 15,
                ),
                const ButtomTranparenteFace(
                  Text: 'Sign Up with Facebook',
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
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
                        ' Log in',
                        style: GoogleFonts.poppins(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
