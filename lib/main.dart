import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Alfa'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent[400],
        ),
        body: SafeArea(
          child: Container(
            width: 150.0,
            height: 150.0,
            color: Colors.grey,
            child: Text('Logo Cenops'),
          ),
        ),
      ),
    );
  }
}
