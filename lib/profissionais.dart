import 'package:alfa/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profissionais extends StatefulWidget {
  const Profissionais({Key? key}) : super(key: key);

  @override
  State<Profissionais> createState() => _ProfissionaisState();
}

class _ProfissionaisState extends State<Profissionais> {
  Expanded criarCardProfissional(
      {required IconData icone, required String texto, required String rota}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Column(
            children: [
              Expanded(
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, rota);
                  },
                  icon: Icon(
                    icone,
                    color: corSecundaria,
                  ),
                  label: Text(
                    texto,
                    style: TextStyle(
                      color: corSecundaria,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            criarCardProfissional(
              icone: FontAwesomeIcons.userNurse,
              texto: 'Enfermeiro',
              rota: '/terceira',
            ),
            criarCardProfissional(
              icone: Icons.psychology,
              texto: 'Psicólogo',
              rota: '/setima',
            ),
            criarCardProfissional(
              icone: FontAwesomeIcons.userDoctor,
              texto: 'Médico',
              rota: '/quinta',
            ),
            criarCardProfissional(
              icone: FontAwesomeIcons.hands,
              texto: 'Intérprete',
              rota: '/quarta',
            ),
            criarCardProfissional(
              icone: FontAwesomeIcons.chalkboardUser,
              texto: 'Professor',
              rota: '/sexta',
            ),
          ],
        ),
      ),
    );
  }
}
