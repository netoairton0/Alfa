import 'package:alfa/main.dart';
import 'package:flutter/material.dart';

class Psicologos extends StatefulWidget {
  const Psicologos({Key? key}) : super(key: key);

  @override
  State<Psicologos> createState() => _PsicologosState();
}

class _PsicologosState extends State<Psicologos> {
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

  Expanded criarPsicologo(String texto, String dados) {
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
            criarPsicologo('Joelma Gonçalves de Oliveira Vale',
                'Número: (85)988713226\nEmail: psicologajoelmavale@gmail.com\nCidade: Fortaleza/CE\nEndereço: Travessa Godofredo Maciel,70 Maraponga\nInstagram: psicologajoelmavale'),
            criarPsicologo('Carlos André Frota Ximenes',
                'Número: (85)997979915\nEmail: andreximenespsi@gmail.com\nCidade: Fortaleza/CE\nEndereço: Rua Campo amor rocha, 94. Bairro de Fátima\nInstagram: andreximenes_psi'),
            // criarPsicologo('Lucila Lima da Silva', ''),
            Container(
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
