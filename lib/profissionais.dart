import 'package:flutter/material.dart';

//PAGINA QUE LISTA OS PROFISSIONAIS
class Profissionais extends StatelessWidget {
  Expanded criarCardProfissional(
      {required IconData icone, required String texto}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: ListTile(
            leading: Icon(
              icone,
              color: Colors.blue[400],
            ),
            title: Text(
              texto,
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
              criarCardProfissional(
                  icone: Icons.medical_services, texto: 'Médicos'),
              criarCardProfissional(icone: Icons.gavel, texto: 'Advogados'),
              criarCardProfissional(icone: Icons.school, texto: 'Professores'),
              criarCardProfissional(
                  icone: Icons.psychology, texto: 'Psicólogos'),
              criarCardProfissional(
                  icone: Icons.airline_seat_recline_extra, texto: 'Dentistas'),
            ],
          ),
        ),
      ),
    );
  }
}
//Dar uma olahda no icone de dentista, olhar o tamanho do icone e do texto