import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:superfood/pages/home_page.dart';
import 'package:superfood/widget/password_text_field.dart';
import '../components/sized_box_fixo.dart';
import '../custom_buttom/buttom_yellow.dart';
import '../widget/custom_text_field.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  final _formKey = GlobalKey<FormState>();

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///Campos a serem Preenchidos
            Form(
              key: _formKey,
              child: CustomTextField(
                labelText: 'Nome',
                hintText: 'Seu Nome Completo',
                validator: (value) {
                  // _formKey.currentState.validate();
                  print(value);
                  return null;
                },
              ),
            ),
            const SizedBoxfixo(),
            const CustomTextField(
              labelText: 'Email',
              hintText: 'email@email.com',
            ),
            const SizedBoxfixo(),
            const Form(
              child: PassWordTextField(
                labelText: 'Password',
              ),
            ),
            const SizedBoxfixo(),
            const CustomTextField(
              labelText: 'Celular numero',
              hintText: '( XX ) X XXXX XXXX ',
            ),
            const SizedBoxfixo(),
            InkWell(
                onTap: () {
                  print('Salvar');
                },
                child: const ButtomYellow(
                  text: 'Salvar',
                )),
          ],
        ),
      ),
    );
  }
}
