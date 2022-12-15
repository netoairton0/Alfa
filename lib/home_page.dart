import 'package:alfa/main.dart';
import 'package:flutter/material.dart';

//HOMEPAGE DO APP
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Expanded criarCard({required IconData icone, required String texto}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(
          20.0,
        ),
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                onPressed: () {},
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
              Container(
                width: double.infinity,
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
          children: <Widget>[
            const SizedBox(
              height: 40.0,
            ),
            criarCard(icone: Icons.badge, texto: 'Profissionais'),
            criarCard(icone: Icons.chat_bubble, texto: 'Entre em contato'),
            const SizedBox(
              //ESPAÇAMENTO ENTRE CARTOES E LOGOS
              height: 60.0,
            ),
            CriarIcone(
              caminho: 'assets/images/LogoExtensaMonocromatica.png',
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}

class CriarIcone extends StatelessWidget {
  final String caminho;

  CriarIcone({required this.caminho});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Image.asset(
          caminho,
        ),
      ),
    );
  }
}
