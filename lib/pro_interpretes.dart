import 'package:alfa/main.dart';
import 'package:flutter/material.dart';

class Interpretes extends StatefulWidget {
  const Interpretes({Key? key}) : super(key: key);

  @override
  State<Interpretes> createState() => _InterpretesState();
}

class _InterpretesState extends State<Interpretes> {
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

  Expanded criarInterprete(String texto, String dados) {
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
            criarInterprete('Francisco Marcos Pinto de Almeida Mota',
                'Número: (85)994273435\nEmail: marcos.librasl2@gmail.com\nCidade: Sobral/CE\nEndereço: Rua José Barbosa Lima, bairro Pedrinhas\nInstagram: marcos_almeidda'),
            criarInterprete('Geisiele Cavalcante de Sousa',
                'Número: (85)991771291\nEmail: Geisielec.web@gmail.com\nCidade: Caucaia/CE\nEndereço: Rua São Sebastião n 20\nInstagram: geisielecavalcante\nFacebook: librason.oficial'),
          ],
        ),
      ),
    );
  }
}
