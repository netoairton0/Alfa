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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(17.0),
                child: Card(
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
                //OBJETIVO: COLUNA OCUPAR A TELA INTEIRA
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
