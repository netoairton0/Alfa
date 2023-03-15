import 'package:alfa/main.dart';
import 'package:flutter/material.dart';

class Medicos extends StatefulWidget {
  const Medicos({Key? key}) : super(key: key);

  @override
  State<Medicos> createState() => _MedicosState();
}

class _MedicosState extends State<Medicos> {
  Widget _buildPopupDialog(BuildContext context, String dados) {
    return AlertDialog(
      title: const Text(
        'Informações',
        style: TextStyle(
          fontFamily: fonteDosTitulos,
          fontWeight: FontWeight.bold,
          fontSize: 23.0,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            dados,
            style: const TextStyle(
              fontFamily: fonteDostextos,
              fontSize: 18.0,
            ),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'Ok',
            style: TextStyle(
              color: corSecundaria,
            ),
          ),
        ),
      ],
    );
  }

  Expanded criarMedico(String texto, String dados) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context, dados),
                  );
                },
                child: Text(
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            criarMedico('Ives Maia Pinheiro (Clínico geral)',
                'Número: (85)988641995\nEmail: ivesmaia@hotmail.com\nCidade: Fortaleza/CE\nEndereço: Ceap Unichristus. Rua princesa Isabel 1920\nInstagram: ivesmaia'),
          ],
        ),
      ),
    );
  }
}
