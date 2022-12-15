import 'package:alfa/contato.dart';
import 'package:alfa/home_page.dart';
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
            fontSize: 20.0,
          ),
          bodyText2: TextStyle(
            color: corSecundaria,
            fontFamily: fonteDosTitulos,
            fontWeight: FontWeight.bold,
            fontSize: 23.0,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
//TODA VARIAVEL É GLOBAL??????