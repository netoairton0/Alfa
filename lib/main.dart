import 'package:alfa/contato.dart';
import 'package:alfa/home_page.dart';
import 'package:alfa/pro_enfermeiros.dart';
import 'package:alfa/pro_interpretes.dart';
import 'package:alfa/pro_medicos.dart';
import 'package:alfa/pro_professores.dart';
import 'package:alfa/pro_psicologos.dart';
import 'package:alfa/profissionais.dart';
import 'package:flutter/material.dart';

const corPrincipal = Color(0xFF59A8F7);
const corSecundaria = Color(0xFFFA911E);
const fonteDosTitulos = 'Raleway';
const fonteDostextos = 'Rubik';

void main() {
  runApp(CenopsApp());
}

class CenopsApp extends StatefulWidget {
  const CenopsApp({Key? key}) : super(key: key);

  @override
  State<CenopsApp> createState() => _CENOPSState();
}

class _CENOPSState extends State<CenopsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: corPrincipal,
        scaffoldBackgroundColor: corPrincipal,
        textTheme: const TextTheme(
          button: TextStyle(
            color: corSecundaria,
            fontFamily: fonteDosTitulos,
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
          bodyText2: TextStyle(
            color: corSecundaria,
            fontFamily: fonteDosTitulos,
            fontWeight: FontWeight.bold,
            fontSize: 23.0,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/primeira': (context) => Profissionais(),
        '/segunda': (context) => EntreEmContato(),
        '/terceira': (context) => Enfermeiros(),
        '/quarta': (context) => Interpretes(),
        '/quinta': (context) => Medicos(),
        '/sexta': (context) => Professores(),
        '/setima': (context) => Psicologos(),
      },
    );
  }
}
