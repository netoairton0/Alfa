import 'package:alfa/main.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EntreEmContato extends StatefulWidget {
  const EntreEmContato({Key? key}) : super(key: key);

  @override
  State<EntreEmContato> createState() => _EntreEmContatoState();
}

class _EntreEmContatoState extends State<EntreEmContato> {
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch url';
    }
  }

  Expanded criarLink(
      {required String url, required String texto, required IconData icone}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Column(
            children: [
              Expanded(
                child: TextButton.icon(
                  icon: Icon(
                    icone,
                    color: corSecundaria,
                  ),
                  label: Text(
                    texto,
                    style: TextStyle(
                      color: corSecundaria,
                    ),
                  ),
                  onPressed: () {
                    _launchUrl(url);
                  },
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
            criarLink(
              url: 'https://cenops.ufc.br/pt/',
              texto: 'Nosso site',
              icone: FontAwesomeIcons.link,
            ),
            criarLink(
              url: 'https://www.instagram.com/cenopsufc/',
              texto: 'Instagram',
              icone: FontAwesomeIcons.instagram,
            ),
            criarLink(
              url: 'https://www.youtube.com/@CENOPSUFC/videos',
              texto: 'Nosso canal no youtube',
              icone: FontAwesomeIcons.youtube,
            ),
            criarLink(
              url: 'https://cenops.ufc.br/pt/profissionais/',
              texto: 'Se cadastre para o app',
              icone: FontAwesomeIcons.userPlus,
            ),
            Container(
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
