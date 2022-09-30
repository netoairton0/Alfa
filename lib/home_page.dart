import 'package:flutter/material.dart';

//HOMEPAGE DO APP
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int x = 10; //so de teste; Nao esquecer o setstate

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent[400], //COR DE FUNDO
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Card(
                  //CARTÃO 1
                  child: ListTile(
                    leading: Icon(
                      Icons.badge,
                      color: Colors.yellow[600],
                      size: 30.0,
                    ),
                    title: const Text(
                      'Profissionais',
                      textScaleFactor: 1.2,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Card(
                  //CARTÃO 2
                  child: ListTile(
                    leading: Icon(
                      Icons.groups,
                      color: Colors.yellow[600],
                      size: 30.0,
                    ),
                    title: Text(
                      'Quem somos',
                      textScaleFactor: 1.2,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Card(
                  //CARTÃO 3
                  child: ListTile(
                    leading: Icon(
                      Icons.chat_bubble,
                      color: Colors.yellow[600],
                      size: 30.0,
                    ),
                    title: Text(
                      'Entre em contato',
                      textScaleFactor: 1.2,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                //ESPAÇAMENTO ENTRE CARTOES E LOGOS
                height: 100.0,
              ),
              Row(
                //LOGOS UFC E CENOPS
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/UFCBrasao.png',
                        width: 90.0,
                        height: 90.0,
                      ),
                      const Text(
                        'Universidade\nFederal\ndo Ceará',
                        textScaleFactor: 1.0,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 70.0,
                  ),
                  Column(
                    children: const <Widget>[
                      CircleAvatar(
                        radius: 60.0,
                      ),
                      Text(
                        'CENOPS',
                        textScaleFactor: 1.0,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 60.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
