import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.badge,
                      color: Colors.amber,
                      size: 30.0,
                    ),
                    title: Text(
                      'Profissionais',
                      textScaleFactor: 1.2,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.groups,
                      color: Colors.amber,
                      size: 30.0,
                    ),
                    title: Text(
                      'Quem somos',
                      textScaleFactor: 1.2,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.chat_bubble,
                      color: Colors.amber,
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
                height: 100.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset(
                        'images/UFCBrasao.png',
                        width: 150.0,
                        height: 150.0,
                      ),
                      const Text(
                        'UFC',
                        textScaleFactor: 1.2,
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
                        textScaleFactor: 1.2,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
