import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:superfood/pages/home_page.dart';
import 'package:superfood/widget/password_text_field.dart';

import '../components/sized_box_fixo.dart';
import '../widget/custom_text_field.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const HomePage();
                },
              ),
            );
          },
        ),
        title: Center(
          child: Text(
            'Profile Edit',
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Campos a serem Preenchidos
            CustomTextField(
              labelText: 'Nome',
              hintText: 'Seu Nome Completo',
            ),
            SizedBoxfixo(),
            CustomTextField(
              labelText: 'Email',
              hintText: 'email@email.com',
            ),
            SizedBoxfixo(),
            Form(
              child: PassWordTextField(
                labelText: 'Password',
              ),
            ),
            SizedBoxfixo(),
            CustomTextField(
              labelText: 'Celular numero',
              hintText: '( XX ) X XXXX XXXX ',
            ),
            SizedBoxfixo(),
          ],
        ),
      ),
    );
  }
}
