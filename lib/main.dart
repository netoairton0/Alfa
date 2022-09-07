import 'package:alfa/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: const Text(
            'CENOPS',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent[400],
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 150.0,
                height: 150.0,
                color: Colors.grey,
                child: Text('Logo Cenops'),
              ),
              Padding(
                padding: EdgeInsets.all(17.0),
                child: TextButton(
                  onPressed: () {
                    print('Botão presionado');
                  },
                  child: const Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.medical_services,
                        color: Colors.amber,
                      ),
                      title: Text(
                        'Médicos',
                      ),
                      horizontalTitleGap: 10.0,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(17.0),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.gavel,
                      color: Colors.amber,
                    ),
                    title: Text(
                      'Advogados',
                    ),
                    horizontalTitleGap: 10.0,
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
}
