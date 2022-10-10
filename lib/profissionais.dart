import 'package:flutter/material.dart';

//PAGINA QUE LISTA OS PROFISSIONAIS
class Profissionais extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent[400],
        appBar: AppBar(
          //BARRA DA PAGINA
          title: const Text(
            'Profissionais',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(17.0),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.medical_services,
                      color: Colors.blue[900],
                    ),
                    title: Text(
                      'Médicos',
                    ),
                    horizontalTitleGap: 10.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(17.0),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.gavel,
                      color: Colors.blue[900],
                    ),
                    title: Text(
                      'Advogados',
                    ),
                    horizontalTitleGap: 10.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
