import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_icons/flutter_icons.dart';

class EntreEmContato extends StatefulWidget {
  const EntreEmContato({Key? key}) : super(key: key);

  @override
  State<EntreEmContato> createState() => _EntreEmContatoState();
}

class _EntreEmContatoState extends State<EntreEmContato> {
  Expanded criarLink(
      {required String texto, required IconData icone, required String url}) {
    return Expanded(
      child: Card(
        child: TextButton.icon(
          onPressed: () {
            _launchUrl(url);
          },
          icon: Icon(icone),
          label: Text(texto),
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri(scheme: 'https', host: url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Entre em contato',
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
              Expanded(
                child: Card(
                  child: TextButton.icon(
                    onPressed: () {
                      _launchUrl('www.youtube.com');
                    },
                    icon: Icon(
                      Icons.abc,
                    ),
                    label: Text(
                      'Youtube',
                    ),
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
//Testar função criar link ; testar biblioteca dos icones; vai ser preciso mexer no xml??