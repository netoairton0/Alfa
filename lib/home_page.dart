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
        padding: const EdgeInsets.all(10.0),
        child: Card(
          child: ListTile(
            leading: Icon(
              icone,
              color: Colors.blueAccent[400],
              size: 30.0,
            ),
            title: Text(
              texto,
              textScaleFactor: 1.2,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent[400], //COR DE FUNDO
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              criarCard(icone: Icons.badge, texto: 'Profissionais'),
              criarCard(icone: Icons.chat_bubble, texto: 'Entre em contato'),
              criarCard(icone: Icons.list_alt, texto: 'Sites interessantes'),
              const SizedBox(
                //ESPAÇAMENTO ENTRE CARTOES E LOGOS
                height: 80.0,
              ),
              Row(
                //LOGOS UFC E CENOPS
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(40.0),
                      child: Image.asset(
                        'assets/images/UFCBrasao.png',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(40.0),
                      child: Image.asset(
                        'assets/images/UFCBrasao.png',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//TODO: olhar se é possivel deixar os tamanhos do listtile variavel