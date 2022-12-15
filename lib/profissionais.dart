import 'package:alfa/main.dart';
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
              color: corSecundaria,
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
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            criarCardProfissional(
                icone: Icons.medical_services, texto: 'Médicos'),
            criarCardProfissional(icone: Icons.gavel, texto: 'Advogados'),
            criarCardProfissional(icone: Icons.school, texto: 'Professores'),
            criarCardProfissional(icone: Icons.psychology, texto: 'Psicólogos'),
            criarCardProfissional(
                icone: Icons.airline_seat_recline_extra, texto: 'Dentistas'),
          ],
        ),
      ),
    );
  }
}
